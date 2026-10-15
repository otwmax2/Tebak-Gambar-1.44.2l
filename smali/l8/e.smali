###### Class l8.e (l8.e)
.class public Ll8/e;
.super Lj8/x;
.source "TGInAppReviewViewModel.java"


# instance fields
.field public C:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public E:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public F:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:Landroidx/databinding/n;

.field public H:Landroidx/databinding/l;

.field public I:Landroidx/databinding/l;

.field J:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field K:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L:Z

.field private M:Lh8/a;

.field private N:Z

.field private O:Z

.field private P:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj8/x;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Ll8/e;->C:Landroidx/databinding/m;

    .line 3
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Ll8/e;->D:Landroidx/databinding/m;

    .line 4
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Ll8/e;->E:Landroidx/databinding/m;

    .line 5
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Ll8/e;->F:Landroidx/databinding/m;

    .line 6
    new-instance p1, Landroidx/databinding/n;

    invoke-direct {p1}, Landroidx/databinding/n;-><init>()V

    iput-object p1, p0, Ll8/e;->G:Landroidx/databinding/n;

    .line 7
    new-instance p1, Landroidx/databinding/l;

    invoke-direct {p1}, Landroidx/databinding/l;-><init>()V

    iput-object p1, p0, Ll8/e;->H:Landroidx/databinding/l;

    .line 8
    new-instance p1, Landroidx/databinding/l;

    invoke-direct {p1}, Landroidx/databinding/l;-><init>()V

    iput-object p1, p0, Ll8/e;->I:Landroidx/databinding/l;

    .line 9
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ll8/e;->J:Ly8/u;

    .line 10
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ll8/e;->K:Ly8/u;

    const/4 p1, 0x5

    .line 11
    iput p1, p0, Ll8/e;->P:I

    return-void
.end method

.method private G()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rating-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll8/e;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll8/e;->N:Z

    .line 2
    invoke-direct {p0}, Ll8/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "click on close"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Ll8/e;->L:Z

    if-nez v0, :cond_15

    return-void

    .line 5
    :cond_15
    invoke-virtual {p0}, Ll8/e;->N()V

    .line 6
    iget-object v0, p0, Ll8/e;->J:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public F()I
    .registers 2

    .line 1
    iget v0, p0, Ll8/e;->P:I

    return v0
.end method

.method H(Lh8/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ll8/e;->M:Lh8/a;

    .line 2
    iget-object v0, p0, Ll8/e;->C:Landroidx/databinding/m;

    const-string v1, "Seru banget kan main tebak gambar?"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ll8/e;->D:Landroidx/databinding/m;

    const-string v1, "Berapa bintang sih yang kamu kasih buat aku?"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Ll8/e;->F:Landroidx/databinding/m;

    const-string v1, "KIRIM"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Ll8/e;->G:Landroidx/databinding/n;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    .line 6
    iget-boolean p1, p1, Lh8/a;->o:Z

    iput-boolean p1, p0, Ll8/e;->L:Z

    .line 7
    iget-object v0, p0, Ll8/e;->H:Landroidx/databinding/l;

    invoke-virtual {v0, p1}, Landroidx/databinding/l;->z(Z)V

    .line 8
    iget-object p1, p0, Ll8/e;->I:Landroidx/databinding/l;

    iget-boolean v0, p0, Ll8/e;->L:Z

    invoke-virtual {p1, v0}, Landroidx/databinding/l;->z(Z)V

    return-void
.end method

.method I()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ll8/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "view on bottom sheet"

    .line 2
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method J()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ll8/e;->N:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll8/e;->O:Z

    .line 3
    invoke-virtual {p0}, Ll8/e;->N()V

    .line 4
    invoke-direct {p0}, Ll8/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dragOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "drag on close"

    .line 5
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method K()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ll8/e;->N:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Ll8/e;->O:Z

    if-nez v0, :cond_18

    .line 2
    invoke-virtual {p0}, Ll8/e;->N()V

    .line 3
    invoke-direct {p0}, Ll8/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tapOutsideOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "tap outside on close"

    .line 4
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public L()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ll8/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnCTABottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "click on cta"

    .line 2
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Ll8/e;->P:I

    if-nez v0, :cond_12

    return-void

    .line 4
    :cond_12
    iget-object v0, p0, Ll8/e;->K:Ly8/u;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public M(I)V
    .registers 2

    .line 1
    iput p1, p0, Ll8/e;->P:I

    return-void
.end method

.method public N()V
    .registers 8

    .line 1
    iget v0, p0, Ll8/e;->P:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    return-void

    .line 2
    :cond_6
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NUMBER_OF_REQUEST_IN_APP_REVIEW"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 4
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "LAST_DATE_REQUEST_IN_APP_REVIEW"

    .line 7
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-ne v1, v3, :cond_37

    const-string v1, "FIRST_DATE_REQUEST_IN_APP_REVIEW"

    .line 8
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
