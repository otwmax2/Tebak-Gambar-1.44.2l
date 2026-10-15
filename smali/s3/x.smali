###### Class s3.x (s3.x)
.class public final Ls3/x;
.super Ljava/lang/Object;
.source "WorkInitializer_Factory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Ls3/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/x;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Ls3/x;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Ls3/x;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Ls3/x;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ls3/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;)",
            "Ls3/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls3/x;

    invoke-direct {v0, p0, p1, p2, p3}, Ls3/x;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lt3/d;Ls3/y;Lu3/b;)Ls3/w;
    .registers 5

    .line 1
    new-instance v0, Ls3/w;

    invoke-direct {v0, p0, p1, p2, p3}, Ls3/w;-><init>(Ljava/util/concurrent/Executor;Lt3/d;Ls3/y;Lu3/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Ls3/w;
    .registers 5

    .line 1
    iget-object v0, p0, Ls3/x;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ls3/x;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/d;

    iget-object v2, p0, Ls3/x;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/y;

    iget-object v3, p0, Ls3/x;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/b;

    invoke-static {v0, v1, v2, v3}, Ls3/x;->c(Ljava/util/concurrent/Executor;Lt3/d;Ls3/y;Lu3/b;)Ls3/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls3/x;->b()Ls3/w;

    move-result-object v0

    return-object v0
.end method
