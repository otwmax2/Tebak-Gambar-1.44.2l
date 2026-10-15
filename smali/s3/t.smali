###### Class s3.t (s3.t)
.class public final Ls3/t;
.super Ljava/lang/Object;
.source "Uploader_Factory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b<",
        "Ls3/s;",
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
            "Lm3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lt3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lm3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/t;->a:Ljavax/inject/Provider;

    .line 3
    iput-object p2, p0, Ls3/t;->b:Ljavax/inject/Provider;

    .line 4
    iput-object p3, p0, Ls3/t;->c:Ljavax/inject/Provider;

    .line 5
    iput-object p4, p0, Ls3/t;->d:Ljavax/inject/Provider;

    .line 6
    iput-object p5, p0, Ls3/t;->e:Ljavax/inject/Provider;

    .line 7
    iput-object p6, p0, Ls3/t;->f:Ljavax/inject/Provider;

    .line 8
    iput-object p7, p0, Ls3/t;->g:Ljavax/inject/Provider;

    .line 9
    iput-object p8, p0, Ls3/t;->h:Ljavax/inject/Provider;

    .line 10
    iput-object p9, p0, Ls3/t;->i:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ls3/t;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lm3/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ls3/y;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lu3/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lv3/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lt3/c;",
            ">;)",
            "Ls3/t;"
        }
    .end annotation

    .line 1
    new-instance v10, Ls3/t;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ls3/t;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static c(Landroid/content/Context;Lm3/e;Lt3/d;Ls3/y;Ljava/util/concurrent/Executor;Lu3/b;Lv3/a;Lv3/a;Lt3/c;)Ls3/s;
    .registers 20

    .line 1
    new-instance v10, Ls3/s;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ls3/s;-><init>(Landroid/content/Context;Lm3/e;Lt3/d;Ls3/y;Ljava/util/concurrent/Executor;Lu3/b;Lv3/a;Lv3/a;Lt3/c;)V

    return-object v10
.end method


# virtual methods
.method public b()Ls3/s;
    .registers 11

    .line 1
    iget-object v0, p0, Ls3/t;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Ls3/t;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lm3/e;

    iget-object v0, p0, Ls3/t;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lt3/d;

    iget-object v0, p0, Ls3/t;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ls3/y;

    iget-object v0, p0, Ls3/t;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ls3/t;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lu3/b;

    iget-object v0, p0, Ls3/t;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lv3/a;

    iget-object v0, p0, Ls3/t;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lv3/a;

    iget-object v0, p0, Ls3/t;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lt3/c;

    invoke-static/range {v1 .. v9}, Ls3/t;->c(Landroid/content/Context;Lm3/e;Lt3/d;Ls3/y;Ljava/util/concurrent/Executor;Lu3/b;Lv3/a;Lv3/a;Lt3/c;)Ls3/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls3/t;->b()Ls3/s;

    move-result-object v0

    return-object v0
.end method
