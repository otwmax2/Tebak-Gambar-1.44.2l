###### Class y7.a (y7.a)
.class public Ly7/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Ly7/a;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx7/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx7/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly7/a;

    invoke-direct {v0}, Ly7/a;-><init>()V

    sput-object v0, Ly7/a;->c:Ly7/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly7/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly7/a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Ly7/a;
    .registers 1

    sget-object v0, Ly7/a;->c:Ly7/a;

    return-object v0
.end method


# virtual methods
.method public b(Lx7/k;)V
    .registers 3

    iget-object v0, p0, Ly7/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lx7/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly7/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d(Lx7/k;)V
    .registers 4

    invoke-virtual {p0}, Ly7/a;->g()Z

    move-result v0

    iget-object v1, p0, Ly7/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_12

    invoke-static {}, Ly7/f;->c()Ly7/f;

    move-result-object p1

    invoke-virtual {p1}, Ly7/f;->e()V

    :cond_12
    return-void
.end method

.method public e()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lx7/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly7/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f(Lx7/k;)V
    .registers 4

    invoke-virtual {p0}, Ly7/a;->g()Z

    move-result v0

    iget-object v1, p0, Ly7/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Ly7/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ly7/a;->g()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-static {}, Ly7/f;->c()Ly7/f;

    move-result-object p1

    invoke-virtual {p1}, Ly7/f;->f()V

    :cond_1d
    return-void
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Ly7/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
