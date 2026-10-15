###### Class l3.w (l3.w)
.class public final Ll3/w;
.super Ljava/lang/Object;
.source "TransportRuntime_Factory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Ll3/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lr3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls3/s;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls3/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lr3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/s;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/w;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Ll3/w;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Ll3/w;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Ll3/w;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Ll3/w;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ll3/w;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lr3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/s;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/w;",
            ">;)",
            "Ll3/w;"
        }
    .end annotation

    .line 1
    new-instance v6, Ll3/w;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ll3/w;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static c(Lv3/a;Lv3/a;Lr3/e;Ls3/s;Ls3/w;)Ll3/u;
    .registers 12

    .line 1
    new-instance v6, Ll3/u;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ll3/u;-><init>(Lv3/a;Lv3/a;Lr3/e;Ls3/s;Ls3/w;)V

    return-object v6
.end method


# virtual methods
.method public b()Ll3/u;
    .registers 6

    .line 1
    iget-object v0, p0, Ll3/w;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/a;

    iget-object v1, p0, Ll3/w;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    iget-object v2, p0, Ll3/w;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/e;

    iget-object v3, p0, Ll3/w;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/s;

    iget-object v4, p0, Ll3/w;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls3/w;

    invoke-static {v0, v1, v2, v3, v4}, Ll3/w;->c(Lv3/a;Lv3/a;Lr3/e;Ls3/s;Ls3/w;)Ll3/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ll3/w;->b()Ll3/u;

    move-result-object v0

    return-object v0
.end method
