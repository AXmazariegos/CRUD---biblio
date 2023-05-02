Imports MySql.Data.MySqlClient
Public Class Form2

    Sub cargadatagrid()
        Dim cString As String
        cString = "server=localhost;user=root;database=biblioteca;port=3306;password=CVO2023;"
        'Crear Conexión
        Dim conn As New MySqlConnection(cString)
        Try
            'Abrimos la conexión
            conn.Open()
            'Crear cadena de Consulta
            Dim sQuery As String
            sQuery = "SELECT * FROM libro" 'Consulta SQL
            'Se crea el Data Adapter
            Dim da As New MySqlDataAdapter(sQuery, conn)
            'Creamos un Data Table
            Dim dt As New DataTable
            'Llenamos el DataTable con el Adaptador
            da.Fill(dt)
            'Llenamos el DataGrid con el DataTable
            DataGridView1.DataSource = dt
            DataGridView1.Refresh()
            conn.Close() 'Cerramos la conexión

        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try
    End Sub
    Private Sub Form2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        cargadatagrid()
    End Sub
End Class