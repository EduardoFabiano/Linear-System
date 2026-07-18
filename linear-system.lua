print("CALCULADORA DE SISTEMAS LINEARES")

local function pedir_numero(mensagem)
    local numero = nil
    while not numero do
        io.write(mensagem)
        local entrada = io.read()
        numero = tonumber(entrada)
        if not numero then
            print("Erro: Digite um número válido!")
        end
    end
    return numero
end

while true do
    print("\n[Primeira Equação]")
    local a1 = pedir_numero("Digite o valor de a: ")
    local b1 = pedir_numero("Digite o valor de b: ")
    local c1 = pedir_numero("Digite o valor de c: ")

    print("\n[Segunda Equação]")
    local a2 = pedir_numero("Digite o valor de a: ")
    local b2 = pedir_numero("Digite o valor de b: ")
    local c2 = pedir_numero("Digite o valor de c: ")

    local D = (a1 * b2) - (b1 * a2)

    if D == 0 then
        print("\nErro: O sistema não possui uma solução única (D = 0).")
    else
        local Dx = (c1 * b2) - (b1 * c2)
        local Dy = (a1 * c2) - (c1 * a2)
        local x = Dx / D
        local y = Dy / D

        print("\n CONJUNTO SOLUÇÃO ")
        print("Valor de X = " .. x)
        print("Valor de Y = " .. y)
    end

    print("\nDeseja calcular outro sistema? (S/N): ")
    local resposta = io.read():lower()
    
    if resposta ~= "s" and resposta ~= "sim" then
        print("Encerrando a calculadora. Até logo!")
        break
    end
end
