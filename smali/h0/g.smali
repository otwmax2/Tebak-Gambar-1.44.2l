###### Class h0.g (h0.g)
.class public final Lh0/g;
.super Ljava/lang/Object;
.source "DataStoreFactory.kt"


# static fields
.field public static final a:Lh0/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh0/g;

    invoke-direct {v0}, Lh0/g;-><init>()V

    sput-object v0, Lh0/g;->a:Lh0/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh0/k;Li0/b;Ljava/util/List;Lda/o0;Ls9/a;)Lh0/f;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh0/k<",
            "TT;>;",
            "Li0/b<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "TT;>;>;",
            "Lda/o0;",
            "Ls9/a<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Lh0/f<",
            "TT;>;"
        }
    .end annotation

    const-string p2, "serializer"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "migrations"

    invoke-static {p3, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scope"

    invoke-static {p4, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "produceFile"

    invoke-static {p5, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Li0/a;

    invoke-direct {v4}, Li0/a;-><init>()V

    .line 2
    sget-object p2, Lh0/e;->a:Lh0/e$a;

    invoke-virtual {p2, p3}, Lh0/e$a;->b(Ljava/util/List;)Ls9/p;

    move-result-object p2

    invoke-static {p2}, Li9/j;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3
    new-instance p2, Lh0/m;

    move-object v0, p2

    move-object v1, p5

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V

    return-object p2
.end method
