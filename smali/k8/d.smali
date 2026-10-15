###### Class k8.d (k8.d)
.class public Lk8/d;
.super Lj8/x;
.source "TGFreeAnswerDialogFragmentViewModel.java"


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

.field public F:Landroidx/databinding/n;

.field public G:Landroidx/databinding/l;

.field public H:Landroidx/databinding/l;

.field I:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field J:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field K:Z

.field private L:Z

.field private M:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj8/x;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lk8/d;->C:Landroidx/databinding/m;

    .line 3
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lk8/d;->D:Landroidx/databinding/m;

    .line 4
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lk8/d;->E:Landroidx/databinding/m;

    .line 5
    new-instance p1, Landroidx/databinding/n;

    invoke-direct {p1}, Landroidx/databinding/n;-><init>()V

    iput-object p1, p0, Lk8/d;->F:Landroidx/databinding/n;

    .line 6
    new-instance p1, Landroidx/databinding/l;

    invoke-direct {p1}, Landroidx/databinding/l;-><init>()V

    iput-object p1, p0, Lk8/d;->G:Landroidx/databinding/l;

    .line 7
    new-instance p1, Landroidx/databinding/l;

    invoke-direct {p1}, Landroidx/databinding/l;-><init>()V

    iput-object p1, p0, Lk8/d;->H:Landroidx/databinding/l;

    .line 8
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lk8/d;->I:Ly8/u;

    .line 9
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lk8/d;->J:Ly8/u;

    return-void
.end method

.method private F()Ljava/lang/String;
    .registers 2

    const-string v0, "offer free answer"

    return-object v0
.end method


# virtual methods
.method public E()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk8/d;->L:Z

    .line 2
    invoke-direct {p0}, Lk8/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "click on close"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lk8/d;->K:Z

    if-nez v0, :cond_15

    return-void

    .line 5
    :cond_15
    iget-object v0, p0, Lk8/d;->I:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method G()V
    .registers 3

    .line 1
    iget-object v0, p0, Lk8/d;->C:Landroidx/databinding/m;

    const-string v1, "Ayo isi lagi kunci jawaban kamu buat soal selanjutnya"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lk8/d;->E:Landroidx/databinding/m;

    const-string v1, "ISI KUNCI JAWABAN"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lk8/d;->F:Landroidx/databinding/n;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lk8/d;->K:Z

    .line 5
    iget-object v1, p0, Lk8/d;->G:Landroidx/databinding/l;

    invoke-virtual {v1, v0}, Landroidx/databinding/l;->z(Z)V

    .line 6
    iget-object v0, p0, Lk8/d;->H:Landroidx/databinding/l;

    iget-boolean v1, p0, Lk8/d;->K:Z

    invoke-virtual {v0, v1}, Landroidx/databinding/l;->z(Z)V

    return-void
.end method

.method H()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lk8/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "view on bottom sheet"

    .line 2
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method I()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lk8/d;->L:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk8/d;->M:Z

    .line 3
    invoke-direct {p0}, Lk8/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dragOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "drag on close"

    .line 4
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method J()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lk8/d;->L:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lk8/d;->M:Z

    if-nez v0, :cond_15

    .line 2
    invoke-direct {p0}, Lk8/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tapOutsideOnCloseBottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "tap outside on close"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public K()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lk8/d;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnCTABottomSheet"

    const-string v2, "bottom sheet"

    const-string v3, "click on cta"

    .line 2
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk8/d;->J:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method
