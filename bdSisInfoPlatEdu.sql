/*==============================================================*/
/* Table: ASIGNACION_TAREA                                      */
/*==============================================================*/
create table ASIGNACION_TAREA (
   ID_MATERIA           INT4                 not null,
   PERIODO_ACAD         VARCHAR(8)           not null,
   ID_TAREA             INT4                 not null,
   constraint PK_ASIGNACION_TAREA primary key (ID_MATERIA, PERIODO_ACAD, ID_TAREA)
);

/*==============================================================*/
/* Index: ASIGNACION_TAREA_PK                                   */
/*==============================================================*/
create unique index ASIGNACION_TAREA_PK on ASIGNACION_TAREA (
ID_MATERIA,
PERIODO_ACAD,
ID_TAREA
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_27_FK on ASIGNACION_TAREA (
ID_MATERIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on ASIGNACION_TAREA (
ID_TAREA
);

/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
create table COMENTARIO (
   ID_COMENTARIO        SERIAL               not null,
   COMENTARIO           VARCHAR(200)         null,
   constraint PK_COMENTARIO primary key (ID_COMENTARIO)
);

/*==============================================================*/
/* Index: COMENTARIO_PK                                         */
/*==============================================================*/
create unique index COMENTARIO_PK on COMENTARIO (
ID_COMENTARIO
);

/*==============================================================*/
/* Table: COMENTARIO_ENTREGA                                    */
/*==============================================================*/
create table COMENTARIO_ENTREGA (
   ID_ENTREGA           INT4                 not null,
   ID_COMENTARIO        INT4                 not null,
   constraint PK_COMENTARIO_ENTREGA primary key (ID_ENTREGA, ID_COMENTARIO)
);

/*==============================================================*/
/* Index: COMENTARIO_ENTREGA_PK                                 */
/*==============================================================*/
create unique index COMENTARIO_ENTREGA_PK on COMENTARIO_ENTREGA (
ID_ENTREGA,
ID_COMENTARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on COMENTARIO_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on COMENTARIO_ENTREGA (
ID_COMENTARIO
);

/*==============================================================*/
/* Table: DOCENTE                                               */
/*==============================================================*/
create table DOCENTE (
   ID_DOCENTE           INT4                 not null,
   DOCENTE_DESDE        DATE                 not null,
   constraint PK_DOCENTE primary key (ID_DOCENTE)
);

/*==============================================================*/
/* Index: DOCENTE_PK                                            */
/*==============================================================*/
create unique index DOCENTE_PK on DOCENTE (
ID_DOCENTE
);

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
   ID_ENTREGA           SERIAL               not null,
   ID_TIPO_ARCHIVO      INT4                 null,
   RETRASO_ENTREGA      BOOL                 not null,
   CALIFICACION         INT4                 null,
   RUTA                 CHAR(10)             null,
   constraint PK_ENTREGA primary key (ID_ENTREGA)
);

/*==============================================================*/
/* Index: ENTREGA_PK                                            */
/*==============================================================*/
create unique index ENTREGA_PK on ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on ENTREGA (
ID_TIPO_ARCHIVO
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   ID_ESTUDIANTE        INT4                 not null,
   ESTADO_MATRICULA     BOOL                 not null,
   CORREO_ESTIDIANTIL   VARCHAR(30)          not null,
   constraint PK_ESTUDIANTE primary key (ID_ESTUDIANTE)
);

/*==============================================================*/
/* Index: ESTUDIANTE_PK                                         */
/*==============================================================*/
create unique index ESTUDIANTE_PK on ESTUDIANTE (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Table: ESTUDIANTE_ENTREGA                                    */
/*==============================================================*/
create table ESTUDIANTE_ENTREGA (
   ID_ESTUDIANTE        INT4                 not null,
   ID_ENTREGA           INT4                 not null,
   constraint PK_ESTUDIANTE_ENTREGA primary key (ID_ESTUDIANTE, ID_ENTREGA)
);

/*==============================================================*/
/* Index: ESTUDIANTE_ENTREGA_PK                                 */
/*==============================================================*/
create unique index ESTUDIANTE_ENTREGA_PK on ESTUDIANTE_ENTREGA (
ID_ESTUDIANTE,
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_29_FK on ESTUDIANTE_ENTREGA (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_30_FK on ESTUDIANTE_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Table: INSCRIPCION                                           */
/*==============================================================*/
create table INSCRIPCION (
   ID_MATERIA           INT4                 not null,
   ID_ESTUDIANTE        INT4                 not null,
   PERIODO_ACADEMICO    VARCHAR(8)           not null,
   constraint PK_INSCRIPCION primary key (ID_MATERIA, ID_ESTUDIANTE, PERIODO_ACADEMICO)
);

/*==============================================================*/
/* Index: INSCRIPCION_PK                                        */
/*==============================================================*/
create unique index INSCRIPCION_PK on INSCRIPCION (
ID_MATERIA,
ID_ESTUDIANTE,
PERIODO_ACADEMICO
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on INSCRIPCION (
ID_MATERIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on INSCRIPCION (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Table: MATERIA                                               */
/*==============================================================*/
create table MATERIA (
   ID_MATERIA           SERIAL               not null,
   NOMBRE_MATERIA       VARCHAR(30)          not null,
   DESCRIPCION2         VARCHAR(30)          not null,
   constraint PK_MATERIA primary key (ID_MATERIA)
);

/*==============================================================*/
/* Index: MATERIA_PK                                            */
/*==============================================================*/
create unique index MATERIA_PK on MATERIA (
ID_MATERIA
);

/*==============================================================*/
/* Table: MATERIA_DOCENTE                                       */
/*==============================================================*/
create table MATERIA_DOCENTE (
   ID_DOCENTE           INT4                 not null,
   ID_MATERIA           INT4                 not null,
   constraint PK_MATERIA_DOCENTE primary key (ID_DOCENTE, ID_MATERIA)
);

/*==============================================================*/
/* Index: MATERIA_DOCENTE_PK                                    */
/*==============================================================*/
create unique index MATERIA_DOCENTE_PK on MATERIA_DOCENTE (
ID_DOCENTE,
ID_MATERIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_28_FK on MATERIA_DOCENTE (
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_31_FK on MATERIA_DOCENTE (
ID_MATERIA
);

/*==============================================================*/
/* Table: NOTIFICACION                                          */
/*==============================================================*/
create table NOTIFICACION (
   ID_NOTIFICACION      SERIAL               not null,
   CONTENIDO_NOTIFICACION VARCHAR(1000)        not null,
   constraint PK_NOTIFICACION primary key (ID_NOTIFICACION)
);

/*==============================================================*/
/* Index: NOTIFICACION_PK                                       */
/*==============================================================*/
create unique index NOTIFICACION_PK on NOTIFICACION (
ID_NOTIFICACION
);

/*==============================================================*/
/* Table: NOTIFICACION_TAREA                                    */
/*==============================================================*/
create table NOTIFICACION_TAREA (
   ID_TAREA             INT4                 not null,
   ID_ESTUDIANTE        INT4                 not null,
   ID_NOTIFICACION      INT4                 not null,
   constraint PK_NOTIFICACION_TAREA primary key (ID_TAREA, ID_ESTUDIANTE, ID_NOTIFICACION)
);

/*==============================================================*/
/* Index: NOTIFICACION_TAREA_PK                                 */
/*==============================================================*/
create unique index NOTIFICACION_TAREA_PK on NOTIFICACION_TAREA (
ID_TAREA,
ID_ESTUDIANTE,
ID_NOTIFICACION
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on NOTIFICACION_TAREA (
ID_TAREA
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on NOTIFICACION_TAREA (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on NOTIFICACION_TAREA (
ID_NOTIFICACION
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   ID_ROL               SERIAL               not null,
   NOMBRE_ROL           VARCHAR(30)          not null,
   ROL_ACTIVO           BOOL                 not null,
   constraint PK_ROL primary key (ID_ROL)
);

/*==============================================================*/
/* Index: ROL_PK                                                */
/*==============================================================*/
create unique index ROL_PK on ROL (
ID_ROL
);

/*==============================================================*/
/* Table: ROL_USUARIO                                           */
/*==============================================================*/
create table ROL_USUARIO (
   ID_USERN             INT4                 not null,
   ID_ROL               INT4                 not null,
   FECHA_ACTVACION      DATE                 not null,
   DESDE                DATE                 not null,
   HASTA                DATE                 not null,
   constraint PK_ROL_USUARIO primary key (ID_USERN, ID_ROL, FECHA_ACTVACION)
);

/*==============================================================*/
/* Index: ROL_USUARIO_PK                                        */
/*==============================================================*/
create unique index ROL_USUARIO_PK on ROL_USUARIO (
ID_USERN,
ID_ROL,
FECHA_ACTVACION
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on ROL_USUARIO (
ID_ROL
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on ROL_USUARIO (
ID_USERN
);

/*==============================================================*/
/* Table: TAREA                                                 */
/*==============================================================*/
create table TAREA (
   ID_TAREA             SERIAL               not null,
   NOMBRE_TAREA         VARCHAR(30)          not null,
   FECHA_ASIGNACION     DATE                 null,
   FECHA_ENTREGA        DATE                 null,
   DESCRIPCION_TAREA    VARCHAR(200)         null,
   constraint PK_TAREA primary key (ID_TAREA)
);

/*==============================================================*/
/* Index: TAREA_PK                                              */
/*==============================================================*/
create unique index TAREA_PK on TAREA (
ID_TAREA
);

/*==============================================================*/
/* Table: TAREA_ENTREGA                                         */
/*==============================================================*/
create table TAREA_ENTREGA (
   ID_TAREA             INT4                 not null,
   ID_ENTREGA           INT4                 not null,
   FECHA_TAREA_ENTREGADA DATE                 not null,
   constraint PK_TAREA_ENTREGA primary key (ID_TAREA, ID_ENTREGA, FECHA_TAREA_ENTREGADA)
);

/*==============================================================*/
/* Index: TAREA_ENTREGA_PK                                      */
/*==============================================================*/
create unique index TAREA_ENTREGA_PK on TAREA_ENTREGA (
ID_TAREA,
ID_ENTREGA,
FECHA_TAREA_ENTREGADA
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on TAREA_ENTREGA (
ID_TAREA
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on TAREA_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Table: TIPO_ARCHIVO                                          */
/*==============================================================*/
create table TIPO_ARCHIVO (
   ID_TIPO_ARCHIVO      SERIAL               not null,
   TIPO_ARCHIVO         VARCHAR(10)          not null,
   constraint PK_TIPO_ARCHIVO primary key (ID_TIPO_ARCHIVO)
);

/*==============================================================*/
/* Index: TIPO_ARCHIVO_PK                                       */
/*==============================================================*/
create unique index TIPO_ARCHIVO_PK on TIPO_ARCHIVO (
ID_TIPO_ARCHIVO
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USERN             SERIAL               not null,
   NOMBRE               VARCHAR(30)          not null,
   CONTRASENIA          VARCHAR(30)          not null,
   FECHA_NAC            DATE                 not null,
   constraint PK_USUARIO primary key (ID_USERN)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
ID_USERN
);

alter table ASIGNACION_TAREA
   add constraint FK_ASIGNACI_RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table ASIGNACION_TAREA
   add constraint FK_ASIGNACI_RELATIONS_MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

alter table COMENTARIO_ENTREGA
   add constraint FK_COMENTAR_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

alter table COMENTARIO_ENTREGA
   add constraint FK_COMENTAR_RELATIONS_COMENTAR foreign key (ID_COMENTARIO)
      references COMENTARIO (ID_COMENTARIO)
      on delete restrict on update restrict;

alter table DOCENTE
   add constraint FK_DOCENTE_RELATIONS_USUARIO foreign key (ID_DOCENTE)
      references USUARIO (ID_USERN)
      on delete restrict on update restrict;

alter table ENTREGA
   add constraint FK_ENTREGA_RELATIONS_TIPO_ARC foreign key (ID_TIPO_ARCHIVO)
      references TIPO_ARCHIVO (ID_TIPO_ARCHIVO)
      on delete restrict on update restrict;

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_RELATIONS_USUARIO foreign key (ID_ESTUDIANTE)
      references USUARIO (ID_USERN)
      on delete restrict on update restrict;

alter table ESTUDIANTE_ENTREGA
   add constraint FK_ESTUDIAN_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table ESTUDIANTE_ENTREGA
   add constraint FK_ESTUDIAN_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table MATERIA_DOCENTE
   add constraint FK_MATERIA__RELATIONS_DOCENTE foreign key (ID_DOCENTE)
      references DOCENTE (ID_DOCENTE)
      on delete restrict on update restrict;

alter table MATERIA_DOCENTE
   add constraint FK_MATERIA__RELATIONS_MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

alter table NOTIFICACION_TAREA
   add constraint FK_NOTIFICA_RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table NOTIFICACION_TAREA
   add constraint FK_NOTIFICA_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table NOTIFICACION_TAREA
   add constraint FK_NOTIFICA_RELATIONS_NOTIFICA foreign key (ID_NOTIFICACION)
      references NOTIFICACION (ID_NOTIFICACION)
      on delete restrict on update restrict;

alter table ROL_USUARIO
   add constraint FK_ROL_USUA_RELATIONS_ROL foreign key (ID_ROL)
      references ROL (ID_ROL)
      on delete restrict on update restrict;

alter table ROL_USUARIO
   add constraint FK_ROL_USUA_RELATIONS_USUARIO foreign key (ID_USERN)
      references USUARIO (ID_USERN)
      on delete restrict on update restrict;

alter table TAREA_ENTREGA
   add constraint FK_TAREA_EN_RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table TAREA_ENTREGA
   add constraint FK_TAREA_EN_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

