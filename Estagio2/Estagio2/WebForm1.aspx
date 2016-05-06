<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Estagio2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Login</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Construction  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'/>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: true,
        });
    });

  </script>
  <script src="js/bootstrap.js"></script>
<!--startsmothscrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
     jQuery(document).ready(function ($) {
         $(".scroll").click(function (event) {
             event.preventDefault();
             $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
         });
     });
	</script>
<!--endsmothscrolling-->
<link rel="stylesheet" href="css/swipebox.css">
			<script src="js/jquery.swipebox.min.js"></script> 
			    <script type="text/javascript">
			        jQuery(function ($) {
			            $(".swipebox").swipebox();
			        });
				</script>

</head>
<body>
        <br clear="all" />
        <div class="col-md-8">
            <div class="cabecalho">
                <h4>CADASTRAR CONCORRÊNCIAS</h4>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12">
                        <nav role="tabpanel">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#geral" aria-controls="geral" role="tab" data-toggle="tab">Geral</a></li>
                                <li role="presentation"><a href="#publicoAlvo" aria-controls="publicoAlvo" role="tab" data-toggle="tab">P&uacute;blico Alvo</a></li>
                                <li role="presentation"><a href="#excecoes" aria-controls="excecoes" role="tab" data-toggle="tab">Exceções</a></li> <!-- antiga aba prazo -->
                                <li role="presentation"><a href="#restricao" aria-controls="restricao" role="tab" data-toggle="tab">Restrição</a></li> <!--antiga aba movimentação-->
                                <li role="presentation"><a href="#requisitosDesejaveis" aria-controls="requisitosDesejaveis" role="tab" data-toggle="tab">Requisitos Desejáveis</a></li>
                                <li role="presentation"><a href="#etapas" aria-controls="etapas" role="tab" data-toggle="tab">Etapas</a></li>
                                
                                <li role="presentation"><a href="#edital" aria-controls="edital" role="tab" data-toggle="tab">Itens do Edital</a></li>
                                
                            </ul>
                        </nav>
                        <div class="tab-content">
                            <!-- Div Geral -->
                            <div role="tabpanel" class="tab-pane fade in active" id="geral">
                                <form name="form" method="POST" target="ifrPost">
                                    <br clear="all">
                                    <div class="col-md-12" style="text-align: left">
                                        <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            Defina o tipo da concorrência, as vagas disponibilizadas, período de inscrição e vigência do Edital. 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Modalidade Concorr&ecirc;ncia:
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="radio" name="mdlConco" value="P">Padrão
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="radio" id="mdlConcoI" name="mdlConco" value="I">Incentivada
                                                </div>
                                                <div class="col-md-3">
                                                    <input type="radio" id="mdlConcoS" name="mdlConco" value="S">Banco de Sucessão
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="nm_bc" class="form-group" style="display:none;">
                                        <div class="row">
                                          <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Nome do Banco de Sucess&atilde;o:
                                                </div>
                                                <div class="col-md-9">
                                                    <input id="txtNomeBancoSucessao" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                    
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Matrícula Resp. Seleção:
                                                </div>
                                                <div id="Div1" class="col-md-9">
                                                    <input class="form-control" id="autocompleteResp" name="autocompleteResp" disable="disable" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                   

                                    <input type="hidden" id="diaUtil">

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <span class="col-md-3 control-label">Superintendência:</span>
                                                <div class="col-md-9">
                                                    <select id="cd_und_rsp" name="CD_UND_RSP" class="form-control">
                                                        <option value="0">- Selecione -</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">

                                            <div class="col-md-12">
                                                <span class="col-md-3 control-label">Unidade:</span>
                                                <div class="col-md-9">
                                                    <input type="hidden" id="hdfUnidade">
                                                    <select name="cd_org" id="cd_org" class="form-control" onchange="javascript: getFuncao();">
                                                        <option value="0">- Selecione -</option>
                                                            <input type="hidden" id="hdfUnidades">
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Fun&ccedil;&atilde;o:
                                                </div>
                                                <div id="idDivFun" class="col-md-9">
                                                    <select class="form-control" name="cd_esp" id="cd_esp" onchange="javascript: getNivelFuncao();">
                                                        <option value="0">- Selecione -</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Nível da Função:
                                                </div>
                                                <div id="idDivNivFun" class="col-md-9">
                                                    <select class="form-control" name="cd_niv_fuc" id="cd_niv_fuc">
                                                        <option value="0">- Selecione -</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Vagas:
                                                </div>
                                                <div class="col-md-2">
                                                    <input class="form-control" name="qt_vag" id="qt_vag" type="text" onblur="Focus(document.form.dt_ini);"
                                                        size="10" onkeypress="mascara(this,soNumeros)" maxlength="4">
                                                </div>
                                                <div class="col-md-2">
                                                    In&iacute;cio:
                                                </div>
                                                <div class="col-md-2">
                                                    <input class="form-control" name="dt_ini" id="dt_ini" type="text" readonly
                                                        size="10" onkeypress="TestDateKey(this);" onblur="return testaData2(this); Focus(document.form.dt_enc);"
                                                        onkeyup="FormataData2('form', 'dt_ini', event); mascaraData(this);" maxlength="10">
                                                </div>
                                                    <span class="glyphicon glyphicon-question-sign" data-original-title="Hooray!" data-toggle="tooltip" title="Data de início será alterada automaticamente quando a concorrência estiver com as inscrições liberadas."></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Encerramento:
                                                </div>
                                                <div class="col-md-2">
                                                    <input class="form-control" name="dt_enc" id="dt_enc" type="text"  size="10" onkeypress="TestDateKey(this);" onblur="return testaData2(this);Focus(document.form.dt_prr);"
                                                        onkeyup="FormataData2('form', 'dt_prr', event); mascaraData(this);" maxlength="10">
                                                </div>
                                                <div class="col-md-2">
                                                    Prorroga&ccedil;&atilde;o:
                                                </div>
                                                <div class="col-md-2">
                                                    <input class="form-control" name="dt_prr" id="dt_prr" type="text" size="10" onkeypress="TestDateKey(this);" onblur="return testaData2(this);"
                                                        onkeyup="FormataData2('form', 'dt_prr', event)" maxlength="10">
                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Validade:
                                                </div>
                                                <div class="col-md-1">
                                                    <input class="form-control" style="width: 50px" size="2" maxlength="2" type="text"
                                                        onkeypress="mascara(this,soNumeros)" id="validadeAno" />
                                                </div>
                                                <div class="col-md-1">
                                                    ano(s)
                                                </div>
                                                <div class="col-md-1">
                                                    <input class="form-control" style="width: 50px" size="2" maxlength="3" type="text"
                                                        onkeypress="mascara(this,soNumeros)" id="validadeMes" />
                                                </div>
                                                <div class="col-md-1">
                                                    m&ecirc;s(es)
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="col-md-3">
                                                    Deseja incluir per&iacute;odo de recurso?
                                                </div>
                                                <div class="col-md-2">
                                                    <input type="checkbox" id="chkPeriodoRecurso" name="chkPeriodoRecurso">Sim
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>                                  
                                                           
                                    <br clear="all">
                                    <hr class="hr" width="100%">
                                    <div class="col-md-1" style="text-align: left">
                                        <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                    </div>
                                    <div class="col-md-11" style="text-align: right">
                                        <input type="button" class="btn btn btn-danger" id="BtSalvarGeral" value="Salvar">
                                    </div>
                                </form>
                            </div>
                            
                            <!-- Div Público Alvo -->
                            <div role="tabpanel" class="tab-pane fade" id="publicoAlvo">
                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Defina o público que poderá participar da concorr&ecirc;ncia, indicando os grupos de lota&ccedil;&atilde;o, as lotações e/ou cidades. 
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <!-- Descrição de público alvo -->
                                    <br clear="all">
                                    <span><b>Descri&ccedil;&atilde;o de p&uacute;blico alvo: </b></span>
                                    <br clear="all">
                                    <textarea id="txtDescricaoPublicoAlvo" name="txtDescricaoPublicoAlvo" class="form-control" rows="10">
                                    </textarea>
                                    <br />
                                    <div style="text-align:right">
                                        <input type="button" class="btn btn-danger" id="btSalvarDescricaoPublicoAlvo" value="Salvar" />
                                    </div>
                                    <br />
                                    <br />
                                </div>

                                <div class="col-md-12">
                                    <!-- inicio accordion -->
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                                                        aria-controls="collapseOne">Grupos de Lota&ccedil;&atilde;o </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <div class="col-md-12">
                                                        <span class="col-md-12">Grupo de Lota&ccedil;&atilde;o:</span>
                                                        <br>
                                                        <div class="col-md-10">
                                                            <select id="ddlArea" class="form-control" data-live-search="true">
                                                                <option value="0">Selecione..</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2" style="text-align: right;">
                                                            <button type="button" class="btn btn-danger" id="btnAdicionarArea">
                                                                Adicionar</button>
                                                        </div>
                                                        <br clear="all">
                                                        <br clear="all">
                                                        <div class="col-md-12">
                                                            <table id="tblArea" style="font-size: 12px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th>C&oacute;digo
                                                                        </th>
                                                                        <th>Grupo de Lota&ccedil;&atilde;o
                                                                        </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="tblItensArea">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br clear="all">
                                            </div>
                                        </div>
                                        <!--Lotações-->
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingTwo">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                                                        aria-expanded="false" aria-controls="collapseTwo">Lota&ccedil;&otilde;es </a>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                <div class="panel-body">
                                                    <div class="col-md-12">
                                                        <span class="col-md-12">Lotação:</span>
                                                        <br>
                                                        <div class="col-md-10">
                                                            <select id="ddlLotacao" class="form-control" data-live-search="true">
                                                                <option value="0">Selecione..</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2" style="text-align: right;">
                                                            <button type="button" class="btn btn-danger" id="btnAdicionarLotacao">
                                                                Adicionar</button>
                                                        </div>
                                                        <br clear="all">
                                                        <br clear="all">
                                                        <div class="col-md-12">
                                                            <table id="tblLotacao" style="font-size: 12px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th>C&oacute;digo
                                                                        </th>
                                                                        <th>Lota&ccedil;&atilde;o
                                                                        </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="tblItensLotacao">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingThree">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                                                        aria-expanded="false" aria-controls="collapseTwo">Cidades </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                <div class="panel-body">
                                                    <div class="col-md-12">
                                                        <span class="col-md-12">Cidade:</span>
                                                        <br>
                                                        <div class="col-md-10">
                                                            <select id="ddlCidade" class="form-control" data-live-search="true">
                                                                <option value="0">Selecione..</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2" style="text-align: right;">
                                                            <button type="button" class="btn btn-danger" id="btnAdicionarCidade">
                                                                Adicionar</button>
                                                        </div>
                                                        <br clear="all">
                                                        <br clear="all">
                                                        <div class="col-md-12">
                                                            <table id="tblCidade" style="font-size: 12px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th>C&oacute;digo
                                                                        </th>
                                                                        <th>Cidade
                                                                        </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="tblItensCidade">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <br clear="all">
                                                </div>
                                            </div>
                                        </div>

                                        <!--Exceções-->
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingFour">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"
                                                        aria-expanded="false" aria-controls="collapseFour">Exce&ccedil;&otilde;es </a>
                                                </h4>
                                            </div>
                                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                                <div class="panel-body">
                                                    <div class="col-md-12">
                                                        <span class="col-md-12">Cargo:</span>
                                                        <br>
                                                        <div class="col-md-10">
                                                            <select id="ddlCargo" class="form-control" data-live-search="true">
                                                                <option value="0">Selecione..</option>
                                                            </select>
                                                        </div>

                                                        <br clear="all">
                                                        <br clear="all">

                                                        <span class="col-md-12">Qualificador:</span>
                                                        <br>
                                                        <div class="col-md-10">
                                                            <select id="ddlQualificador" class="form-control" data-live-search="true">
                                                                <option value="0">Selecione..</option>
                                                            </select>
                                                        </div>

                                                        <div class="col-md-2" style="text-align: right;">
                                                            <button type="button" class="btn btn-danger" id="btnAdicionarExcecoes">
                                                                Adicionar</button>
                                                        </div>
                                                        <br clear="all">
                                                        <br clear="all">
                                                        <div class="col-md-12">
                                                            <table id="tblExcecoes" style="font-size: 12px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Cargo
                                                                        </th>
                                                                        <th>Qualificador
                                                                        </th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="tblItensExcecoes">
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>  
                                        </div>

                                    </div>
                                </div>
                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                </div>
                            </div>

                            <!-- Div Exceções -->
                            <div role="tabpanel" class="tab-pane fade" id="excecoes">
                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Defina o prazo, se for o caso, para a aquisição de requisitos obrigatórios (Competências e Certificações) pelo funcionário participante da concorrência.  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Qtd de Dias Corridos Competencia:
                                            </div>
                                            <div class="col-md-5">
                                                <input class="form-control" style="width: 100px" value="0" size="3" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="qtdDiaCorridoCompetencia" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Qtd Dias Corridos Certifição Interna:
                                            </div>
                                            <div class="col-md-5">
                                                <input class="form-control" style="width: 100px" value="0" size="3" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="qtdDiaCorridoCertInterna" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Qtd Dias Corridos Certificação Externa:
                                            </div>
                                            <div class="col-md-5">
                                                <input class="form-control" style="width: 100px" value="0" size="3" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="qtdDiaCorridoCertExterna" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                </div>
                                <div class="col-md-11" style="text-align: right">
                                    <input type="button" class="btn btn btn-danger" id="btSalvarPrazo" value="Salvar">
                                </div>
                            </div>

                            <!-- Div Restrição -->
                            <div role="tabpanel" class="tab-pane fade" id="restricao">
                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Defina o período mínimo sem movimentação (remoção, designação e lateralidade) que  o funcionário necessita para participação na concorrência.  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Tempo de Remoção a Pedido:
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" style="width: 50px" value="0" size="2" maxlength="2" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpRemocaoAnos" />
                                            </div>
                                            <div class="col-md-1">
                                                ano(s)
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpRemocaoMeses" />
                                            </div>
                                            <div class="col-md-1">
                                                m&ecirc;s(es)
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Tempo Designa&ccedil;&atilde;o por Concorr&ecirc;ncia:
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="2" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpDesignacaoAnos">
                                            </div>
                                            <div class="col-md-1">
                                                ano(s)
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpDesignacaoMeses" />
                                            </div>
                                            <div class="col-md-1">
                                                m&ecirc;s(es)
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Tempo Lateralidade:
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="2" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpLateralidadeAnos" />
                                            </div>
                                            <div class="col-md-1">
                                                ano(s)
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="tmpLateralidadeMeses" />
                                            </div>
                                            <div class="col-md-1">
                                                m&ecirc;s(es)
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-4">
                                                Desist&ecirc;ncia:
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="2" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="desistenciaAnos" />
                                            </div>
                                            <div class="col-md-1">
                                                ano(s)
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="desistenciaMeses" />
                                            </div>
                                            <div class="col-md-1">
                                                m&ecirc;s(es)
                                            </div>
                                            <div class="col-md-2" style="width: 130px">
                                                N&deg; Desist&ecirc;ncia:
                                            </div>
                                            <div class="col-md-1">
                                                <input class="form-control" value="0" style="width: 50px" size="2" maxlength="3" type="text"
                                                    onkeypress="mascara(this,soNumeros)" id="qtdeDesistencia" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                </div>
                                <div class="col-md-11" style="text-align: right">
                                    <input type="button" class="btn btn btn-danger" id="btSalvarMovimentacao" value="Salvar">
                                </div>
                            </div>
                            
                           <!--Requisitos desejáveis-->
                            <div role="tabpanel" class="tab-pane fade" id="requisitosDesejaveis">
                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Informe os Requisitos Desej&aacute;veis no campo texto abaixo.  
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <!-- Descrição de requisitos desejáveis -->
                                    <br clear="all">
                                    <span><b>Requisitos Desej&aacute;veis: </b></span>
                                    <br clear="all">
                                    <textarea id="txtRequisitosDesejaveis" name="txtRequisitosDesejaveis" class="form-control" rows="10">
                                    </textarea>
                                    <br />
                                    <div style="text-align:right">
                                        <input type="button" class="btn btn-danger" id="btSalvarRequisitosDesejaveis" value="Salvar" />
                                    </div>
                                    <br />
                                    <br />
                                </div>
                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>

                            </div>
                        </div>

                            <!-- Div Etapas -->
                            <div role="tabpanel" class="tab-pane fade" id="etapas">

                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Defina quais serão as fases do processo de concorrência, indicando o tipo (eliminatória ou classificatória), ordem, peso, notas, e indicar o total de convocados por fase. 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Etapa:
                                            </div>
                                            <div class="col-md-10">
                                                <select name="cdEtpCon" id="cdEtpCon" class="form-control" data-live-search="true">
                                                    <option value="-1">- Selecione -</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Ordem:
                                            </div>
                                            <div class="col-md-3">
                                                <input class="form-control" style="width: 50px" id="sqOrdEtp" name="sqOrdEtp" onkeypress="mascara(this,soNumeros)"
                                                    maxlength="2">
                                            </div>
                                            <div class="col-md-2">
                                                Peso:
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" class="form-control" style="width: 65px" id="vrPeso" name="vrPeso" onkeypress="mascara(this,soNumeros)"
                                                    maxlength="5">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Nota Mínima:
                                            </div>
                                            <div class="col-md-3">
                                                <input class="form-control" style="width: 50px" id="vrNtMin" name="vrNtMin" onkeypress="mascara(this,soNumeros)"
                                                    maxlength="2">
                                            </div>
                                            <div class="col-md-2">
                                                Nota Máxima:
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control" style="width: 50px" id="vrNtMax" name="vrNtMax" onkeypress="mascara(this,soNumeros)"
                                                    maxlength="3">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Qtd Func Convocados:
                                            </div>
                                            <div class="col-md-3">
                                                <input class="form-control" style="width: 50px" id="qtFunCnv" name="qtFunCnv" onkeypress="mascara(this,soNumeros)"
                                                    maxlength="3">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Classificatória:
                                            </div>
                                            <div class="col-md-3">
                                                <input type="checkbox" name="chkClassificatoria" id="chkClassificatoria">
                                            </div>
                                            <div class="col-md-2">
                                                Eliminatória:
                                            </div>
                                            <div class="col-md-2">
                                                <input type="checkbox" name="chkEliminatoria" id="chkEliminatoria">
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" id="controleEdit">
                                </div>
                                <br clear="all">
                                <div class="form-group" id="FormCalculoParcial">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="col-md-2">
                                                Cálculo Parcial:
                                            </div>
                                            <div class="col-md-3">
                                                <input type="checkbox" name="chkCalculoParcial" id="chkCalculoParcial">
                                            </div>
                                        </div>
                                    </div>                                
                                </div>
                                <div class="col-md-12" style="text-align: right;">
                                    <button type="button" class="btn btn-danger" id="btnAdicionarEtapa">
                                        Adicionar</button>
                                </div>
                                <br clear="all">
                                <br clear="all">
                                <div class="col-md-12">
                                    <table id="tblEtapa" class="table table-stripped" style="font-size: 12px;">
                                        <thead>
                                            <th width="16%">Etapa
                                            </th>
                                            <th width="6%">Ordem
                                            </th>
                                            <th width="6%">Peso
                                            </th>
                                            <th width="10%">Nota Mínima
                                            </th>
                                            <th width="10%">Nota Máxima
                                            </th>
                                            <th width="10%">Qtd Func Convocados
                                            </th>
                                            <th width="10%">Classificatório
                                            </th>
                                            <th width="10%">Eliminatório
                                            </th>
                                            <th width="10%">Cálculo Parcial
                                            </th>
                                            <th width="14%"></th>
                                        </thead>
                                        <tbody id="tblItensEtapa">
                                        </tbody>
                                    </table>
                                </div>
                                <br clear="all">
                                <br clear="all">
                                <div class="col-md-12">
                                    <div class="panel-group" id="accordion123" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="Div2">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion123" href="#collapseOne123" aria-expanded="true"
                                                        aria-controls="collapseOne123">Cálculo Parcial</a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne123" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <div class="col-md-12">
                                                        <br clear="all">
                                                        <table id="tblCalculoParcial" class="table table-stripped" style="font-size: 12px;">
                                                            <thead>
                                                                <th width="16%">Etapa
                                                                </th>
                                                                <th width="6%">Ordem
                                                                </th>
                                                                <th width="14%"></th>
                                                            </thead>
                                                            <tbody id="tblItensCalculoParcial">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <br clear="all">
                                                    <br clear="all">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   </div>
                                
                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                </div>
                                <br clear="all">
                            </div>

                                                      
                            <!-- Div Edital -->
                            <div role="tabpanel" class="tab-pane fade" id="edital">
                                <br clear="all">
                                <div class="col-md-12" style="text-align: left">
                                    <div class="alert alert-warning alert-dismissible fade in" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        Selecione os itens que farão parte de edital, no parágrafo  “OUTRAS INFORMAÇÕES”.  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table id="tblTemplates" class="table table-striped">
                                                <thead><tr><th width="30%">Itens</th><th widht="50%">Texto</th><th widht="20%"></th></tr></thead>
                                                <tbody id="tblItensTemplates">
                                                    <tr class="itemEdital">
                                                        <td></td>
                                                        <td></td>
                                                        <td style="text-align:center" onclick='UsarTodosTemplates();'><a style="cursor:pointer;">Usar Todos</a></td>
                                                    </tr>
                                                        <tr class="itemEdital">
                                                            <td></td>
                                                            <td></td>
                                                            <td style="text-align:center"><a style="cursor:pointer">Usar</a></td>
                                                        </tr>
                                                </tbody>
                                            </table>

                                            <br clear="all"><br clear="all">
                                            <span><b>Texto do edital: </b><small>(O texto informado aqui será válido somente para esse edital)</small></span>
                                            <br clear="all">
                                            <textarea id="txtTemplate" name="txtTemplate" class="form-control" rows="10">
                                            </textarea>
                                            <input type="hidden" id="tipo" name="tipo" value="U">
                                            <input type="hidden" id="idConcorrencia" name="idConcorrencia">
                                        </div>
                                    </div>
                                </div>
                                <br clear="all">
                                <hr class="hr" width="100%">
                                <div class="col-md-1" style="text-align: left">
                                    <a onclick="javascript: document.location='conc_consultar.asp?forma_script=C';" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i>Voltar</a>
                                </div>
                                <div class="col-md-11" style="text-align: right">
                                    <input type="submit" class="btn btn btn-danger" id="btSalvarEdital" value="Salvar">
                                </div>
                                <iframe id="ifrEdital" name="ifrEdital" style="display:none" src="about:blank"></iframe>
                            </div>

                        </div>
                    </div>
                    
                </div>
            </div>
        </div>

        <!-- Modal de mensagens -->
        <div class="modal fade" id="modalMensagens" tabindex="-1" role="dialog" aria-labelledby="cabecalho" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="cabecalho">Concorr&ecirc;ncias Internas</h4>
              </div>
              <div class="modal-body">
                <div id="divMensagem" class="alert alert-danger">
                    <label id="lblMensagem"></label>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Modal de Prorrogações -->
        <div class="modal fade" id="modalProrrogacoes" tabindex="-1" role="dialog" aria-labelledby="cabecalho" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="H1">Concorr&ecirc;ncias Internas</h4>
              </div>
              <div class="modal-body">
                <h5>Prorrogações da Concorrência</h5>
                <table id="tblProrrogacoes" class="table table-striped" width="100%" style="font-size: 12px;">
                    <thead>
                        <tr>
                            <th>Data da Prorrogação</th>
                        </tr>
                    </thead>
                    <tbody id="tblItensProrrogacoes">
                    </tbody>
                </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Modal de Cálculo Parcial -->
        <div class="modal fade" id="modalCalculoParcial" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
           <div class="modal-dialog">
                <div class="modal-content" id="conteudoModal">
                      
                </div>
            </div>
         </div>
</body>
</html>
