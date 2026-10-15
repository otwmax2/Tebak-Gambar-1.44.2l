###### Class b2.g (b2.g)
.class Lb2/g;
.super Ljava/lang/Object;
.source "EngineKeyFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz1/c;IILz1/e;Lz1/e;Lz1/g;Lz1/f;Lp2/c;Lz1/b;)Lb2/f;
    .registers 23

    .line 1
    new-instance v11, Lb2/f;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lb2/f;-><init>(Ljava/lang/String;Lz1/c;IILz1/e;Lz1/e;Lz1/g;Lz1/f;Lp2/c;Lz1/b;)V

    return-object v11
.end method
