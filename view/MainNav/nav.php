<?php
    if ($_SESSION["rol_id"]==1){
        ?>
            <nav class="side-menu">
                <ul class="side-menu-list">
                    <li class="blue-dirty">
                        <a href="..\Home\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Inicio</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\NuevoRegistro\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Nuevo Registro</span>
                        </a>
                    </li>

                    <li class="blue-dirty">
                        <a href="..\ConsultarRegistro\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Consultar Registro</span>
                        </a>
                    </li>
                </ul>
            </nav>
        <?php
    }else{
        ?>
            <nav class="side-menu">
                <ul class="side-menu-list">
                    <li class="blue-dirty">
                        <a href="..\Home\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Inicio</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\MntUsuario\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Mantenimiento Usuario</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\MntProveedor\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Mantenimiento Proveedor</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\MntCategoria\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Categoria</span>
                        </a>
                    </li>
                    <li class="blue-dirty">
                        <a href="..\ConsultarRegistro\">
                            <span class="glyphicon glyphicon-th"></span>
                            <span class="lbl">Productividad Usuario</span>
                        </a>
                    </li>
                </ul>
            </nav>
        <?php
    }
?>
