###### Class com.tebakgambar.selfie.i (com.tebakgambar.selfie.i)
.class public Lcom/tebakgambar/selfie/i;
.super Landroidx/lifecycle/a;
.source "SelfieFrameChooserViewModel.java"


# instance fields
.field s:Lcom/tebakgambar/selfie/h$e;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Lcom/tebakgambar/selfie/h$e;

    invoke-direct {v0}, Lcom/tebakgambar/selfie/h$e;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/selfie/i;->s:Lcom/tebakgambar/selfie/h$e;

    .line 3
    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->a:Landroidx/databinding/n;

    invoke-static {p1}, Ly8/y;->s(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/n;->z(I)V

    .line 4
    new-instance p1, Lu8/j;

    invoke-direct {p1, p0}, Lu8/j;-><init>(Lcom/tebakgambar/selfie/i;)V

    invoke-static {p1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/selfie/i;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/i;->l()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/i;->s:Lcom/tebakgambar/selfie/h$e;

    iget-object v0, v0, Lcom/tebakgambar/selfie/h$e;->b:Landroidx/databinding/o;

    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v1

    invoke-virtual {v1}, Ln8/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    return-object v0
.end method

###### Class u8.j (u8.j)
.class public final synthetic Lu8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/selfie/i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/j;->a:Lcom/tebakgambar/selfie/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lu8/j;->a:Lcom/tebakgambar/selfie/i;

    invoke-static {v0}, Lcom/tebakgambar/selfie/i;->k(Lcom/tebakgambar/selfie/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
