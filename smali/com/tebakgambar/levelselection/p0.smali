###### Class com.tebakgambar.levelselection.p0 (com.tebakgambar.levelselection.p0)
.class public Lcom/tebakgambar/levelselection/p0;
.super Landroidx/lifecycle/a;
.source "SliderViewModel.java"


# instance fields
.field private A:Lcom/tebakgambar/model/Slider;

.field private B:I

.field s:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field t:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroidx/databinding/n;

.field private z:Lcom/tebakgambar/model/Level;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->s:Ly8/u;

    .line 3
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->t:Ly8/u;

    .line 4
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->u:Landroidx/databinding/m;

    .line 5
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->v:Landroidx/databinding/m;

    .line 6
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->w:Landroidx/databinding/m;

    .line 7
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->x:Landroidx/databinding/m;

    .line 8
    new-instance p1, Landroidx/databinding/n;

    invoke-direct {p1}, Landroidx/databinding/n;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->y:Landroidx/databinding/n;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/levelselection/p0;I)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/p0;->m(I)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/tebakgambar/levelselection/p0;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/p0;->n(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m(I)Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 1
    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->z:Lcom/tebakgambar/model/Level;

    .line 2
    iget p1, p1, Lcom/tebakgambar/model/Level;->sliderId:I

    invoke-static {p1}, Lcom/tebakgambar/model/Slider;->fromId(I)Lcom/tebakgambar/model/Slider;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->A:Lcom/tebakgambar/model/Slider;

    goto :goto_1f

    .line 3
    :cond_11
    invoke-static {}, Lcom/tebakgambar/database/SliderDatabase;->C()Lcom/tebakgambar/database/SliderDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/database/SliderDatabase;->D()Ln8/c;

    move-result-object p1

    invoke-virtual {p1}, Ln8/c;->b()Lcom/tebakgambar/model/Slider;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p0;->A:Lcom/tebakgambar/model/Slider;

    :goto_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic n(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/p0;->o()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private o()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->A:Lcom/tebakgambar/model/Slider;

    iget-object v0, v0, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    iget v1, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Slider$Image;

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/levelselection/p0;->u:Landroidx/databinding/m;

    iget-object v2, v0, Lcom/tebakgambar/model/Slider$Image;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcom/tebakgambar/model/Slider$Image;->backgroundColor:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tebakgambar/model/Slider$Image;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tebakgambar/model/Slider$Image;->backgroundColor:Ljava/lang/String;

    .line 5
    :cond_30
    iget-object v1, p0, Lcom/tebakgambar/levelselection/p0;->w:Landroidx/databinding/m;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, v0, Lcom/tebakgambar/model/Slider$Image;->backgroundColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/tebakgambar/levelselection/p0;->v:Landroidx/databinding/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tebakgambar/model/Slider$Image;->buttonTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 7
    iget v0, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    iget-object v1, p0, Lcom/tebakgambar/levelselection/p0;->A:Lcom/tebakgambar/model/Slider;

    iget-object v1, v1, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_7e

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->y:Landroidx/databinding/n;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->x:Landroidx/databinding/m;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0800b5

    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    goto :goto_94

    .line 10
    :cond_7e
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->y:Landroidx/databinding/n;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->x:Landroidx/databinding/m;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0800b4

    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    :goto_94
    return-void
.end method


# virtual methods
.method p()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/tebakgambar/levelselection/p0;->A:Lcom/tebakgambar/model/Slider;

    iget-object v2, v2, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 2
    iget v0, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tebakgambar/levelselection/p0;->B:I

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/p0;->o()V

    goto :goto_2f

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->z:Lcom/tebakgambar/model/Level;

    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->setSlideAlredyShown()V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->s:Ly8/u;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/p0;->z:Lcom/tebakgambar/model/Level;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_2f

    .line 7
    :cond_26
    iget-object v0, p0, Lcom/tebakgambar/levelselection/p0;->t:Ly8/u;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    :goto_2f
    return-void
.end method

.method q(I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/n0;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/n0;-><init>(Lcom/tebakgambar/levelselection/p0;I)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/levelselection/o0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/o0;-><init>(Lcom/tebakgambar/levelselection/p0;)V

    sget-object v1, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p1, v0, v1}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

###### Class com.tebakgambar.levelselection.n0 (com.tebakgambar.levelselection.n0)
.class public final synthetic Lcom/tebakgambar/levelselection/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/p0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/p0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/n0;->a:Lcom/tebakgambar/levelselection/p0;

    iput p2, p0, Lcom/tebakgambar/levelselection/n0;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/n0;->a:Lcom/tebakgambar/levelselection/p0;

    iget v1, p0, Lcom/tebakgambar/levelselection/n0;->b:I

    invoke-static {v0, v1}, Lcom/tebakgambar/levelselection/p0;->k(Lcom/tebakgambar/levelselection/p0;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.o0 (com.tebakgambar.levelselection.o0)
.class public final synthetic Lcom/tebakgambar/levelselection/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/p0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/o0;->a:Lcom/tebakgambar/levelselection/p0;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/o0;->a:Lcom/tebakgambar/levelselection/p0;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/p0;->l(Lcom/tebakgambar/levelselection/p0;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
