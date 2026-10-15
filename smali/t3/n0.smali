###### Class t3.n0 (t3.n0)
.class public final Lt3/n0;
.super Ljava/lang/Object;
.source "SQLiteEventStore_Factory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Lt3/m0;",
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
            "Lt3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lt3/t0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
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
            "Lt3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/t0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/n0;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Lt3/n0;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Lt3/n0;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Lt3/n0;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Lt3/n0;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lt3/n0;
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
            "Lt3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/t0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lt3/n0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lt3/n0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lt3/n0;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static c(Lv3/a;Lv3/a;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;)Lt3/m0;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/a;",
            "Lv3/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lt3/m0;"
        }
    .end annotation

    .line 1
    new-instance v6, Lt3/m0;

    move-object v3, p2

    check-cast v3, Lt3/e;

    move-object v4, p3

    check-cast v4, Lt3/t0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lt3/m0;-><init>(Lv3/a;Lv3/a;Lt3/e;Lt3/t0;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public b()Lt3/m0;
    .registers 6

    .line 1
    iget-object v0, p0, Lt3/n0;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/a;

    iget-object v1, p0, Lt3/n0;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    iget-object v2, p0, Lt3/n0;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lt3/n0;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lt3/n0;->e:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lt3/n0;->c(Lv3/a;Lv3/a;Ljava/lang/Object;Ljava/lang/Object;Ljavax/inject/Provider;)Lt3/m0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt3/n0;->b()Lt3/m0;

    move-result-object v0

    return-object v0
.end method
