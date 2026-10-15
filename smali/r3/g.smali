###### Class r3.g (r3.g)
.class public final Lr3/g;
.super Ljava/lang/Object;
.source "SchedulingConfigModule_ConfigFactory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Ls3/g;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr3/g;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lv3/a;)Ls3/g;
    .registers 2

    .line 1
    invoke-static {p0}, Lr3/f;->a(Lv3/a;)Ls3/g;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ln3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/g;

    return-object p0
.end method

.method public static b(Ljavax/inject/Provider;)Lr3/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;)",
            "Lr3/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr3/g;

    invoke-direct {v0, p0}, Lr3/g;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public c()Ls3/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lr3/g;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/a;

    invoke-static {v0}, Lr3/g;->a(Lv3/a;)Ls3/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lr3/g;->c()Ls3/g;

    move-result-object v0

    return-object v0
.end method
