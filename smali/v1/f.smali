###### Class v1.f (v1.f)
.class public Lv1/f;
.super Lv1/e;
.source "GenericTranscodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/e<",
        "TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final R:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final S:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResourceType;>;"
        }
    .end annotation
.end field

.field private final U:Lv1/j$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lv1/g;Ljava/lang/Class;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lq2/m;Lq2/g;Lv1/j$d;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv1/g;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lg2/l<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lq2/m;",
            "Lq2/g;",
            "Lv1/j$d;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 6
    invoke-static {}, Lp2/e;->c()Lp2/c;

    move-result-object v0

    move-object v5, p2

    invoke-static {p2, v9, v10, v11, v0}, Lv1/f;->C(Lv1/g;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)Ls2/f;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lv1/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Ljava/lang/Class;Lv1/g;Lq2/m;Lq2/g;)V

    .line 7
    iput-object v9, v8, Lv1/f;->R:Lg2/l;

    .line 8
    iput-object v10, v8, Lv1/f;->S:Ljava/lang/Class;

    .line 9
    iput-object v11, v8, Lv1/f;->T:Ljava/lang/Class;

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v8, Lv1/f;->U:Lv1/j$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lv1/e;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lv1/j$d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lv1/e<",
            "TModelType;***>;",
            "Lg2/l<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lv1/j$d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lv1/e;->q:Lv1/g;

    invoke-static {}, Lp2/e;->c()Lp2/c;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lv1/f;->C(Lv1/g;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)Ls2/f;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lv1/e;-><init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V

    .line 2
    iput-object p3, p0, Lv1/f;->R:Lg2/l;

    .line 3
    iput-object p4, p0, Lv1/f;->S:Ljava/lang/Class;

    .line 4
    iput-object p5, p0, Lv1/f;->T:Ljava/lang/Class;

    .line 5
    iput-object p6, p0, Lv1/f;->U:Lv1/j$d;

    return-void
.end method

.method private static C(Lv1/g;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)Ls2/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/g;",
            "Lg2/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lp2/c<",
            "TZ;TR;>;)",
            "Ls2/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lv1/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;

    move-result-object p0

    .line 2
    new-instance p2, Ls2/e;

    invoke-direct {p2, p1, p4, p0}, Ls2/e;-><init>(Lg2/l;Lp2/c;Ls2/b;)V

    return-object p2
.end method

.method private E()Lv1/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/e<",
            "TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lp2/e;->c()Lp2/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    iget-object v2, p0, Lv1/f;->S:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lv1/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;

    move-result-object v1

    .line 3
    new-instance v2, Ls2/e;

    iget-object v3, p0, Lv1/f;->R:Lg2/l;

    invoke-direct {v2, v3, v0, v1}, Ls2/e;-><init>(Lg2/l;Lp2/c;Ls2/b;)V

    .line 4
    iget-object v0, p0, Lv1/f;->U:Lv1/j$d;

    new-instance v1, Lv1/e;

    const-class v3, Ljava/io/File;

    invoke-direct {v1, v2, v3, p0}, Lv1/e;-><init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V

    invoke-virtual {v0, v1}, Lv1/j$d;->a(Lv1/e;)Lv1/e;

    move-result-object v0

    sget-object v1, Lv1/i;->r:Lv1/i;

    invoke-virtual {v0, v1}, Lv1/e;->x(Lv1/i;)Lv1/e;

    move-result-object v0

    sget-object v1, Lb2/b;->s:Lb2/b;

    invoke-virtual {v0, v1}, Lv1/e;->j(Lb2/b;)Lv1/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv1/e;->z(Z)Lv1/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public D(II)Lt2/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lt2/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lv1/f;->E()Lv1/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lv1/e;->o(II)Lt2/a;

    move-result-object p1

    return-object p1
.end method
