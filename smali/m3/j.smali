###### Class m3.j (m3.j)
.class public final Lm3/j;
.super Ljava/lang/Object;
.source "CreationContextFactory_Factory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Lm3/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/j;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Lm3/j;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Lm3/j;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lm3/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;)",
            "Lm3/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm3/j;

    invoke-direct {v0, p0, p1, p2}, Lm3/j;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lv3/a;Lv3/a;)Lm3/i;
    .registers 4

    .line 1
    new-instance v0, Lm3/i;

    invoke-direct {v0, p0, p1, p2}, Lm3/i;-><init>(Landroid/content/Context;Lv3/a;Lv3/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lm3/i;
    .registers 4

    .line 1
    iget-object v0, p0, Lm3/j;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lm3/j;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    iget-object v2, p0, Lm3/j;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/a;

    invoke-static {v0, v1, v2}, Lm3/j;->c(Landroid/content/Context;Lv3/a;Lv3/a;)Lm3/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm3/j;->b()Lm3/i;

    move-result-object v0

    return-object v0
.end method
