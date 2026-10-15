###### Class com.tebakgambar.levelselection.f (com.tebakgambar.levelselection.f)
.class public Lcom/tebakgambar/levelselection/f;
.super Landroidx/lifecycle/a;
.source "LevelLoadingViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/f$b;
    }
.end annotation


# instance fields
.field public s:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Li8/a;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field x:Lcom/tebakgambar/levelselection/f$b;

.field y:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->s:Landroidx/databinding/m;

    .line 3
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->t:Landroidx/databinding/m;

    .line 4
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->u:Landroidx/lifecycle/t;

    .line 5
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->v:Landroidx/lifecycle/t;

    .line 6
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    .line 7
    new-instance p1, Lcom/tebakgambar/levelselection/f$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/tebakgambar/levelselection/f$b;-><init>(Lcom/tebakgambar/levelselection/f;Lcom/tebakgambar/levelselection/f$a;)V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f;->x:Lcom/tebakgambar/levelselection/f$b;

    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/levelselection/f;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/f;->p(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/tebakgambar/levelselection/f;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/levelselection/f;->o()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/tebakgambar/levelselection/f;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/f;->q(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic o()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    iget v1, p0, Lcom/tebakgambar/levelselection/f;->y:I

    invoke-virtual {v0, v1}, Ln8/a;->d(I)Lcom/tebakgambar/model/LevelWithVersioning;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tebakgambar/model/LevelWithVersioning;->isNeedToUpdate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic p(Lt1/h;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/f;->v:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic q(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/f;->s:Landroidx/databinding/m;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    iget-object v0, v0, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    invoke-static {p1, v0}, Lcom/tebakgambar/service/TGDownloadService;->v(Landroid/content/Context;Lcom/tebakgambar/model/Level;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method n()V
    .registers 4

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/c;-><init>(Lcom/tebakgambar/levelselection/f;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/levelselection/e;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/e;-><init>(Lcom/tebakgambar/levelselection/f;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v0, v1, v2}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method r()V
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    rem-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/tebakgambar/levelselection/f;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120117

    invoke-virtual {v2, v4, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_26
    const/4 v2, 0x3

    if-ge v5, v2, :cond_39

    if-ge v5, v1, :cond_31

    const-string v2, "."

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_31
    const-string v2, " "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 5
    :cond_39
    iget-object v1, p0, Lcom/tebakgambar/levelselection/f;->t:Landroidx/databinding/m;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

.method s(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/tebakgambar/levelselection/f;->y:I

    .line 2
    new-instance v0, Lcom/tebakgambar/levelselection/d;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/d;-><init>(Lcom/tebakgambar/levelselection/f;I)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

###### Class com.tebakgambar.levelselection.f.a (com.tebakgambar.levelselection.f$a)
.class synthetic Lcom/tebakgambar/levelselection/f$a;
.super Ljava/lang/Object;
.source "LevelLoadingViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.tebakgambar.levelselection.f.b (com.tebakgambar.levelselection.f$b)
.class Lcom/tebakgambar/levelselection/f$b;
.super Landroid/content/BroadcastReceiver;
.source "LevelLoadingViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/f;


# direct methods
.method private constructor <init>(Lcom/tebakgambar/levelselection/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/f$b;->a:Lcom/tebakgambar/levelselection/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tebakgambar/levelselection/f;Lcom/tebakgambar/levelselection/f$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/f$b;-><init>(Lcom/tebakgambar/levelselection/f;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    new-instance p1, Li8/a;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/f$b;->a:Lcom/tebakgambar/levelselection/f;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    invoke-direct {p1, v0, p2}, Li8/a;-><init>(Lcom/tebakgambar/model/Level;Landroid/content/Intent;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/levelselection/f$b;->a:Lcom/tebakgambar/levelselection/f;

    iget-object p2, p2, Lcom/tebakgambar/levelselection/f;->u:Landroidx/lifecycle/t;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.c (com.tebakgambar.levelselection.c)
.class public final synthetic Lcom/tebakgambar/levelselection/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/f;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/c;->a:Lcom/tebakgambar/levelselection/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/c;->a:Lcom/tebakgambar/levelselection/f;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/f;->l(Lcom/tebakgambar/levelselection/f;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.d (com.tebakgambar.levelselection.d)
.class public final synthetic Lcom/tebakgambar/levelselection/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/f;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/d;->a:Lcom/tebakgambar/levelselection/f;

    iput p2, p0, Lcom/tebakgambar/levelselection/d;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/d;->a:Lcom/tebakgambar/levelselection/f;

    iget v1, p0, Lcom/tebakgambar/levelselection/d;->b:I

    invoke-static {v0, v1}, Lcom/tebakgambar/levelselection/f;->m(Lcom/tebakgambar/levelselection/f;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.e (com.tebakgambar.levelselection.e)
.class public final synthetic Lcom/tebakgambar/levelselection/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/f;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/e;->a:Lcom/tebakgambar/levelselection/f;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/e;->a:Lcom/tebakgambar/levelselection/f;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/f;->k(Lcom/tebakgambar/levelselection/f;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
