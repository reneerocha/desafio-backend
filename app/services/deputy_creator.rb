require 'csv'
require 'roo'

class DeputyCreator
    def initialize(csv)
      @csv = csv
    end

    def self.call(csv)
      new(csv).call
    end

    def call
      deputy_creator
    end

    private

    def deputy_creator
        CSV.foreach(@csv, headers: true, encoding: 'bom|utf-8', col_sep: ';') do |row|
        next if row['sgUF'] != 'PI'

        ActiveRecord::Base.transaction do
          create_rows!(row)
        end
      end
    end

    def create_rows!(row)
      legislature = Legislature.find_or_create_by!(year: row['nuLegislatura'])
      deputy = find_or_create_deputy!(row, legislature)
      create_expense!(row, deputy)
    end

    def find_or_create_deputy!(row, legislature)
      Deputy.find_or_create_by!(
        name: row['txNomeParlamentar'],
        deputy_id: row['ideCadastro'],
        identity_number: row['cpf'],
        state: row['sgUF'],
        party: row['sgPartido'],
        legislature_id: legislature.id
      )
    end

    def create_expense!(row, deputy)
      Expense.create!(
        expense_type: row['txtDescricao'],
        document_number: row['txtNumero'],
        identity_number: row['txtCNPJCPF'],
        document_type: row['indTipoDocumento'],
        issue_date: row['datEmissao'],
        document_value: row['vlrDocumento'],
        gloss_value: row['vlrGlosa'],
        net_value: row['vlrLiquido'],
        month: row['numMes'],
        year: row['numAno'],
        portion: row['numParcela'],
        passenger: row['txtPassageiro'],
        batch: row['numLote'],
        refund: row['numRessarcimento'],
        restitution: row['vlrRestituicao'],
        document_url: row['urlDocumento'],
        deputy_id: deputy.id
      )
    end


end