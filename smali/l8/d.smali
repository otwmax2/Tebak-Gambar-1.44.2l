###### Class l8.d (l8.d)
.class public Ll8/d;
.super Lcom/google/android/material/bottomsheet/b;
.source "TGInAppReviewDialogFragment.java"


# instance fields
.field p:Lo8/q0;

.field q:Ll8/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    return-void
.end method

.method private A(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "Mengirimkan email..."

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "mailto:info@tebakgambar.com"

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "subject"

    const-string v2, "Masukan untuk Tebak Gambar"

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "to"

    const-string v2, "info@tebakgambar.com"

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Ll8/d;->w()Ljava/lang/String;

    move-result-object v1

    const-string v3, "body"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.EMAIL"

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private B(Landroid/app/Dialog;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomsheet/a;

    if-eqz v0, :cond_1a

    .line 2
    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->j()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->j()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    new-instance v0, Ll8/d$a;

    invoke-direct {v0, p0}, Ll8/d$a;-><init>(Ll8/d;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    :cond_1a
    return-void
.end method

.method public static synthetic s(Ll8/d;Z)V
    .registers 2

    invoke-direct {p0, p1}, Ll8/d;->v(Z)V

    return-void
.end method

.method public static synthetic t(Ll8/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ll8/d;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Ll8/d;Landroid/widget/RatingBar;FZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ll8/d;->y(Landroid/widget/RatingBar;FZ)V

    return-void
.end method

.method private v(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void
.end method

.method private w()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {v0}, Lj8/x;->p()Lg5/s;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Lg5/s;->V3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v0}, Lg5/s;->V3()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "guest"

    :goto_15
    const/4 v1, 0x0

    .line 4
    :try_start_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v2

    .line 6
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 7
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Menurutmu, apa yang masih bisa kami tingkatkan?\nRating saya: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll8/d;->q:Ll8/e;

    .line 8
    invoke-virtual {v3}, Ll8/e;->F()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nVersi perangkat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nVersi apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nEmail: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n---\n(Tulis disini)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x(Ljava/lang/String;)V
    .registers 6

    const-string p1, "android.intent.action.VIEW"

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void

    .line 3
    :cond_c
    iget-object v1, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {v1}, Ll8/e;->F()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_55

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_19
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_36} :catch_37

    goto :goto_58

    .line 6
    :catch_37
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 7
    :cond_55
    invoke-direct {p0, v0}, Ll8/d;->A(Landroid/app/Activity;)V

    .line 8
    :goto_58
    iget-object p1, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {p1}, Ll8/e;->N()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void
.end method

.method private synthetic y(Landroid/widget/RatingBar;FZ)V
    .registers 4

    .line 1
    iget-object p1, p0, Ll8/d;->p:Lo8/q0;

    invoke-virtual {p1}, Lo8/q0;->u0()Ll8/e;

    move-result-object p1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ll8/e;->M(I)V

    if-eqz p2, :cond_15

    .line 2
    invoke-static {p2}, Lcom/tebakgambar/model/enums/RatingType;->castIntToEnum(I)Lcom/tebakgambar/model/enums/RatingType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/model/enums/RatingType;->description()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_15
    const-string p1, ""

    .line 3
    :goto_17
    iget-object p2, p0, Ll8/d;->p:Lo8/q0;

    invoke-virtual {p2}, Lo8/q0;->u0()Ll8/e;

    move-result-object p2

    iget-object p2, p2, Ll8/e;->E:Landroidx/databinding/m;

    invoke-virtual {p2, p1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public static z(Lh8/a;)Ll8/d;
    .registers 4

    .line 1
    new-instance v0, Ll8/d;

    invoke-direct {v0}, Ll8/d;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TGInAppReviewDialogFragment"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Ll8/d;->q:Ll8/e;

    iget-boolean p1, p1, Ll8/e;->L:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {p1}, Ll8/e;->I()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Ll8/e;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Ll8/e;

    iput-object p1, p0, Ll8/d;->q:Ll8/e;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TGInAppReviewDialogFragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lh8/a;

    if-eqz p1, :cond_2a

    .line 5
    iget-object v0, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {v0, p1}, Ll8/e;->H(Lh8/a;)V

    .line 6
    :cond_2a
    iget-object p1, p0, Ll8/d;->q:Ll8/e;

    iget-object p1, p1, Ll8/e;->J:Ly8/u;

    new-instance v0, Ll8/b;

    invoke-direct {v0, p0}, Ll8/b;-><init>(Ll8/d;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p0, Ll8/d;->q:Ll8/e;

    iget-object p1, p1, Ll8/e;->K:Ly8/u;

    new-instance v0, Ll8/c;

    invoke-direct {v0, p0}, Ll8/c;-><init>(Ll8/d;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ll8/d;->B(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/q0;

    iput-object p1, p0, Ll8/d;->p:Lo8/q0;

    .line 2
    iget-object p2, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {p1, p2}, Lo8/q0;->w0(Ll8/e;)V

    .line 3
    iget-object p1, p0, Ll8/d;->p:Lo8/q0;

    invoke-virtual {p1}, Lo8/q0;->u0()Ll8/e;

    move-result-object p1

    iget-object p1, p1, Ll8/e;->E:Landroidx/databinding/m;

    iget-object p2, p0, Ll8/d;->q:Ll8/e;

    invoke-virtual {p2}, Ll8/e;->F()I

    move-result p2

    invoke-static {p2}, Lcom/tebakgambar/model/enums/RatingType;->castIntToEnum(I)Lcom/tebakgambar/model/enums/RatingType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tebakgambar/model/enums/RatingType;->description()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ll8/a;

    invoke-direct {p1, p0}, Ll8/a;-><init>(Ll8/d;)V

    .line 5
    iget-object p2, p0, Ll8/d;->p:Lo8/q0;

    iget-object p2, p2, Lo8/q0;->S:Landroid/widget/RatingBar;

    invoke-virtual {p2, p1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 6
    iget-object p1, p0, Ll8/d;->p:Lo8/q0;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

###### Class l8.d.a (l8.d$a)
.class Ll8/d$a;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "TGInAppReviewDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/d;->B(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll8/d;


# direct methods
.method constructor <init>(Ll8/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ll8/d$a;->a:Ll8/d;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .registers 3

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_d

    .line 1
    iget-object p1, p0, Ll8/d$a;->a:Ll8/d;

    iget-object p1, p1, Ll8/d;->q:Ll8/e;

    invoke-virtual {p1}, Ll8/e;->J()V

    :cond_d
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x5

    if-ne p2, p1, :cond_a

    .line 1
    iget-object p1, p0, Ll8/d$a;->a:Ll8/d;

    iget-object p1, p1, Ll8/d;->q:Ll8/e;

    invoke-virtual {p1}, Ll8/e;->K()V

    :cond_a
    return-void
.end method

###### Class l8.a (l8.a)
.class public final synthetic Ll8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field public final synthetic a:Ll8/d;


# direct methods
.method public synthetic constructor <init>(Ll8/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/a;->a:Ll8/d;

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 5

    iget-object v0, p0, Ll8/a;->a:Ll8/d;

    invoke-static {v0, p1, p2, p3}, Ll8/d;->u(Ll8/d;Landroid/widget/RatingBar;FZ)V

    return-void
.end method

###### Class l8.b (l8.b)
.class public final synthetic Ll8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ll8/d;


# direct methods
.method public synthetic constructor <init>(Ll8/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/b;->a:Ll8/d;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ll8/b;->a:Ll8/d;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Ll8/d;->s(Ll8/d;Z)V

    return-void
.end method

###### Class l8.c (l8.c)
.class public final synthetic Ll8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ll8/d;


# direct methods
.method public synthetic constructor <init>(Ll8/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/c;->a:Ll8/d;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ll8/c;->a:Ll8/d;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ll8/d;->t(Ll8/d;Ljava/lang/String;)V

    return-void
.end method
