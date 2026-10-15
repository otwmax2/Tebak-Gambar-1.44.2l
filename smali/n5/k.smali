###### Class n5.k (n5.k)
.class public Ln5/k;
.super Ljava/lang/Object;
.source "RemoteConfigDeferredProxy.java"


# instance fields
.field private final a:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "Lv6/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk6/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "Lv6/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/k;->a:Lk6/a;

    return-void
.end method

.method public static synthetic a(Ln5/e;Lk6/b;)V
    .registers 2

    invoke-static {p0, p1}, Ln5/k;->b(Ln5/e;Lk6/b;)V

    return-void
.end method

.method private static synthetic b(Ln5/e;Lk6/b;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv6/a;

    const-string v0, "firebase"

    .line 2
    invoke-interface {p1, v0, p0}, Lv6/a;->a(Ljava/lang/String;Lw6/a;)V

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p0

    const-string p1, "Registering RemoteConfig Rollouts subscriber"

    invoke-virtual {p0, p1}, Ln5/g;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lr5/m;)V
    .registers 4

    if-nez p1, :cond_c

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Didn\'t successfully register with UserMetadata for rollouts listener"

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_c
    new-instance v0, Ln5/e;

    invoke-direct {v0, p1}, Ln5/e;-><init>(Lr5/m;)V

    .line 3
    iget-object p1, p0, Ln5/k;->a:Lk6/a;

    new-instance v1, Ln5/j;

    invoke-direct {v1, v0}, Ln5/j;-><init>(Ln5/e;)V

    invoke-interface {p1, v1}, Lk6/a;->a(Lk6/a$a;)V

    return-void
.end method

###### Class n5.j (n5.j)
.class public final synthetic Ln5/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# instance fields
.field public final synthetic a:Ln5/e;


# direct methods
.method public synthetic constructor <init>(Ln5/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/j;->a:Ln5/e;

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 3

    iget-object v0, p0, Ln5/j;->a:Ln5/e;

    invoke-static {v0, p1}, Ln5/k;->a(Ln5/e;Lk6/b;)V

    return-void
.end method
