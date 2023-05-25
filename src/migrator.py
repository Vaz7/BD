import csv
import mysql.connector

# Connect to the database
cnx = mysql.connector.connect(
    host='localhost',
    user='root',
    password='1234',
    database='videomino'
)
cursor = cnx.cursor()


#migrar para clientes

# Open the CSV file
with open('../data/clientes.csv', 'r') as file:
    # Create a CSV reader
    reader = csv.reader(file)
    
    # Skip the header row if it exists
    header = next(reader, None)
    
    # Iterate over the remaining rows
    for row in reader:
        # Extract the data from the row
        username, password, nome, nif, data_nascimento, email, n_telemovel, morada = row
        
        # Define the SQL statement to insert a row into the Cliente table
        insert_query = """
        INSERT INTO Cliente (username, password, nome, nif, data_nascimento, email, n_telemovel, morada)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        
        # Execute the SQL statement
        cursor.execute(insert_query, (username, password, nome, nif, data_nascimento, email, n_telemovel, morada))
        cnx.commit()




#migrar para moradas

# Read data from the CSV file
with open('../data/moradas.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        idMorada = int(row[0])
        rua = row[1]
        num_porta = int(row[2])
        cidade = row[3]
        codigo_postal = row[4]

        # Insert the data into the Morada table
        query = "INSERT INTO Morada (idMorada, rua, num_porta, cidade, codigo_postal) VALUES (%s, %s, %s, %s, %s)"
        values = (idMorada, rua, num_porta, cidade, codigo_postal)
        cursor.execute(query, values)

# Commit the changes and close the connection
cnx.commit()



#migrar para funcionarios

# Read data from CSV and insert into the table
with open('../data/funcionarios.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    next(csvreader)  # Skip header row
    
    for row in csvreader:
        idFuncionário = int(row[0])
        nome = row[1]
        data_nascimento = row[2]
        iban = row[3]
        email = row[4]
        n_telemovel = int(row[5])
        morada = int(row[6])
        
        insert_query = '''
        INSERT INTO Funcionário (idFuncionário, nome, data_nascimento, iban, email, n_telemovel, morada)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
        '''
        values = (idFuncionário, nome, data_nascimento, iban, email, n_telemovel, morada)
        cursor.execute(insert_query, values)
    
    cnx.commit()

#migrar para vendas

# Read data from the CSV file and insert into the Venda table
with open('../data/vendas.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    next(csvreader)  # Skip the header row

    for row in csvreader:
        idVenda = int(row[0])
        idCliente = row[1]
        idFuncionário = int(row[2])
        n_artigos = int(row[3])
        preco_final = float(row[4])
        metodo = int(row[5])
        autenticidade = int(row[6])
        data = row[7]

        insert_query = """
            INSERT INTO Venda (idVenda, idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        values = (idVenda, idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
        cursor.execute(insert_query, values)

    # Commit the changes and close the cursor
    cnx.commit()


#migrar para filmes

# Reading data from the filmes.csv file and inserting into the Filme table
with open('../data/filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        id_filme = int(row[0])
        nome = row[1]
        data = row[2]
        restricao_idade = int(row[3])
        genero = row[4]
        galarduacoes = row[5]
        sinopse = row[6]
        stock = int(row[7])
        preco = float(row[8])
        
        # Inserting data into the Filme table
        cursor.execute("""
            INSERT INTO Filme (idFilme, nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (id_filme, nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco))

    # Committing the changes to the database
    cnx.commit()


#migrar para reviews

# Read data from the CSV file and insert into the table
with open("../data/reviews.csv", "r") as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        # Extract values from the CSV row
        idReview = int(row[0])
        rating = int(row[1])
        comentario = row[2]
        id_filme = int(row[3])
        
        # Execute the INSERT statement
        cursor.execute("""
            INSERT INTO Review (idReview, rating, comentario, id_filme)
            VALUES (%s, %s, %s, %s)
        """, (idReview, rating, comentario, id_filme))

# Commit the changes to the database
cnx.commit()


#migrar para venda_filmes 

# Read data from the CSV file and insert into the table
with open('../data/venda_filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row

    # Iterate over each row in the CSV and insert into the table
    for row in reader:
        id_venda = int(row[0])
        id_filme = int(row[1])

        # Insert the data into the Venda_filme table
        cursor.execute("""
            INSERT INTO Venda_filme (id_venda, id_filme)
            VALUES (%s, %s)
        """, (id_venda, id_filme))

    
    cnx.commit()


#migrar para fornecedores

# Read data from the CSV file and insert into the table
with open('../data/fornecedores.csv', 'r') as file:
    csv_data = csv.reader(file)
    next(csv_data)  # Skip the header row

    for row in csv_data:
        idFornecedor = int(row[0])
        nome = row[1]
        nif = int(row[2])
        iban = row[3]
        email = row[4]

        # Insert the data into the Fornecedor table
        cursor.execute("""
            INSERT INTO Fornecedor (idFornecedor, nome, nif, iban, email)
            VALUES (%s, %s, %s, %s, %s)
        """, (idFornecedor, nome, nif, iban, email))

# Commit the changes to the database
cnx.commit()

#migrar para compras

# Read data from the CSV file and insert into the Compra table
with open('../data/compras.csv', 'r') as file:
    csv_data = csv.reader(file)
    next(csv_data)  # Skip the header row

    for row in csv_data:
        idCompra = int(row[0])
        data_criacao = row[1]
        data_prevista = row[2]
        n_artigos = int(row[3])
        preco_total = float(row[4])
        idFornecedor = int(row[5])

        # Insert the row into the Compra table
        cursor.execute("""
            INSERT INTO Compra (idCompra, data_criacao, data_prevista, n_artigos, preco_total, idFornecedor)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (idCompra, data_criacao, data_prevista, n_artigos, preco_total, idFornecedor))

# Commit the changes and close the connection
cnx.commit()

#migrar para compra_filmes

# Read data from the CSV file and insert into the table
with open('../data/compra_filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    
    for row in reader:
        id_compra = int(row[0])
        id_filme = int(row[1])
        
        insert_query = """
            INSERT INTO Compra_filme (id_compra, id_filme)
            VALUES (%s, %s)
        """
        
        cursor.execute(insert_query, (id_compra, id_filme))
        cnx.commit()


# Close the database connection
cursor.close()
cnx.close()
