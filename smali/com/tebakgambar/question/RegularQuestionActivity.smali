###### Class com.tebakgambar.question.RegularQuestionActivity (com.tebakgambar.question.RegularQuestionActivity)
.class public Lcom/tebakgambar/question/RegularQuestionActivity;
.super Lj8/t;
.source "RegularQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/question/RegularQuestionActivity$i;,
        Lcom/tebakgambar/question/RegularQuestionActivity$j;,
        Lcom/tebakgambar/question/RegularQuestionActivity$k;
    }
.end annotation


# static fields
.field private static K:I = 0x1f4

.field private static L:I = 0x4b0


# instance fields
.field A:Lcom/tebakgambar/question/g;

.field private B:Landroid/app/Dialog;

.field private C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Lcom/tebakgambar/model/FreeAnswer;

.field private G:J

.field private H:Lj8/c0;

.field private I:Lj8/c0;

.field private J:Ly8/w;

.field questionGlobalIndex:I

.field private y:Ljava/lang/Runnable;

.field z:Lo8/o;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->questionGlobalIndex:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->G:J

    return-void
.end method

.method public static synthetic A1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->A2(Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

.method private synthetic A2(Lcom/tebakgambar/question/g$f;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object p1, p1, Lcom/tebakgambar/question/g$f;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

.method public static synthetic B1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->O2(Lg5/s;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic B2(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "RAJA"

    goto :goto_12

    :cond_10
    const-string v0, "REGULAR"

    :goto_12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "- ads"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "clickAnswerPage"

    const-string v1, "answer page"

    const-string v2, "click on hint adder"

    invoke-static {v0, v1, v2, p2}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->X2()V

    return-void
.end method

.method public static synthetic C1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->H2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic C2(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    iget-object v1, v1, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "- selfie"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "clickAnswerPage"

    const-string v1, "answer page"

    const-string v2, "click on hint adder"

    invoke-static {v0, v1, v2, p2}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget p2, p2, Lcom/tebakgambar/question/g;->G:I

    invoke-virtual {p1, p2}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->questionGlobalIndex(I)Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0xb

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic D1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->t2(Ljava/lang/Integer;)V

    return-void
.end method

.method private static synthetic D2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic E1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->Z2(Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

.method private synthetic E2(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->X2()V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p2}, Lcom/tebakgambar/question/g;->L()Z

    move-result p2

    if-eqz p2, :cond_16

    const-string p2, "RAJA"

    goto :goto_18

    :cond_16
    const-string p2, "REGULAR"

    :goto_18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p2, p2, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "- ads"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "clickAnswerPage"

    const-string v0, "answer page"

    const-string v1, "click on hint adder"

    invoke-static {p2, v0, v1, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic F1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->y2(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

.method private synthetic F2(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget p2, p2, Lcom/tebakgambar/question/g;->G:I

    invoke-virtual {p1, p2}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->questionGlobalIndex(I)Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0xb

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p2, p2, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget p2, p2, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p2, p2, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "- selfie"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "clickAnswerPage"

    const-string v0, "answer page"

    const-string v1, "click on hint adder"

    invoke-static {p2, v0, v1, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    return-object p0
.end method

.method private synthetic G2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->k0()V

    return-void
.end method

.method static synthetic H1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    return-object p1
.end method

.method private static synthetic H2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic I1(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->W2()V

    return-void
.end method

.method private synthetic I2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->I:Lj8/c0;

    return-object p0
.end method

.method private synthetic J2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->k0()V

    return-void
.end method

.method static synthetic K1(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->Y2()V

    return-void
.end method

.method private synthetic K2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->j0()V

    return-void
.end method

.method static synthetic L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->f3(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic L2(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic M1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->k3(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic N1()I
    .registers 1

    .line 1
    sget v0, Lcom/tebakgambar/question/RegularQuestionActivity;->K:I

    return v0
.end method

.method private synthetic N2(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->useFreeAnswer(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$g;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$g;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    .line 3
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    :cond_36
    return-void
.end method

.method static synthetic O1()I
    .registers 1

    .line 1
    sget v0, Lcom/tebakgambar/question/RegularQuestionActivity;->L:I

    return v0
.end method

.method private synthetic O2(Lg5/s;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lt8/z0;

    invoke-direct {v0, p0}, Lt8/z0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic P1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/os/Handler;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lj8/t;->g0()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private P2()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_f
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->M(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic Q1(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->e2()V

    return-void
.end method

.method private Q2(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_f
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->h()Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->questionGlobalIndex(I)Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic R1(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->d3()V

    return-void
.end method

.method private R2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_f
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->M(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic S1(Lcom/tebakgambar/question/RegularQuestionActivity;ZLjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->b2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private S2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_f
    invoke-virtual {p0}, Lj8/t;->S0()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic T1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->y:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic U0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->F2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic U1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->H:Lj8/c0;

    return-object p0
.end method

.method private U2(Lt1/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Lcom/tebakgambar/model/Question;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->G:J

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->f0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->d0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->j0:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    new-instance v0, Lt8/e1;

    invoke-direct {v0, p0}, Lt8/e1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    sget-object v1, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {p1, v0, v1}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object p1

    new-instance v0, Lt8/f1;

    invoke-direct {v0, p0}, Lt8/f1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Lt1/h;->m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method public static synthetic V0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->D2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic V1(Lcom/tebakgambar/question/RegularQuestionActivity;Lj8/c0;)Lj8/c0;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->H:Lj8/c0;

    return-object p1
.end method

.method private V2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    new-instance v1, Lt8/h0;

    invoke-direct {v1, p0}, Lt8/h0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v0}, Lcom/tebakgambar/component/ClickableImageView;->l()V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    new-instance v1, Lt8/i0;

    invoke-direct {v1, p0}, Lt8/i0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-static {v1}, Ly8/m;->b(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/ClickableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic W0(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->q2(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->F:Lcom/tebakgambar/model/FreeAnswer;

    return-object p0
.end method

.method private W2()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->g3()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-static {v0}, Lj8/b;->o(Lcom/google/android/gms/ads/rewarded/RewardedAd;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lt8/w0;

    invoke-direct {v1, p0}, Lt8/w0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->e(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 4
    :cond_1a
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-static {v0}, Lj8/b;->n(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->f(Landroid/app/Activity;)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->h3(Z)V

    const v1, 0x7f1201e0

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic X0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->M2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic X1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->F:Lcom/tebakgambar/model/FreeAnswer;

    return-object p1
.end method

.method private X2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v0, Lcom/tebakgambar/question/g;->u:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v1, :cond_e

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj8/b;->A(Landroid/app/Activity;)V

    goto :goto_31

    .line 3
    :cond_e
    iget-object v0, v0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-static {v0}, Lj8/b;->n(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->f(Landroid/app/Activity;)V

    goto :goto_31

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lj8/t;->i0()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201e0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_31
    return-void
.end method

.method public static synthetic Y0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->w2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Y1(Lcom/tebakgambar/question/RegularQuestionActivity;)Ly8/w;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->J:Ly8/w;

    return-object p0
.end method

.method private Y2()V
    .registers 2

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj8/b;->A(Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public static synthetic Z0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->K2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic Z1(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->c2()V

    return-void
.end method

.method private Z2(Lcom/tebakgambar/question/g$f;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43

    .line 7
    :cond_38
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Lj8/t;->g0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/d;

    invoke-direct {v1, p0, p1}, Lcom/tebakgambar/question/d;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V

    sget p1, Lcom/tebakgambar/question/RegularQuestionActivity;->K:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic a1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->z2(Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

.method private a2()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->e2()V

    return-void

    .line 3
    :cond_e
    new-instance v1, Lt8/c1;

    invoke-direct {v1, p0, v0}, Lt8/c1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V

    invoke-static {v1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private a3()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->K()Z

    move-result v0

    const v1, 0x7f12005d

    const v2, 0x7f1200b6

    const v3, 0x7f1200b7

    const v4, 0x7f1200b5

    if-eqz v0, :cond_49

    .line 2
    new-instance v0, Lj8/f1;

    invoke-direct {v0, p0}, Lj8/f1;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj8/f1;->k(Ljava/lang/CharSequence;)Lj8/f1;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lt8/h1;

    invoke-direct {v4, p0}, Lt8/h1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v3, v4}, Lj8/f1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/i1;

    invoke-direct {v3, p0}, Lt8/i1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/f1;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt8/k1;->o:Lt8/k1;

    invoke-virtual {v0, v1, v2}, Lj8/f1;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_8d

    .line 8
    :cond_49
    new-instance v0, Lj8/h0;

    invoke-direct {v0, p0}, Lj8/h0;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj8/h0;->n(Ljava/lang/CharSequence;)Lj8/h0;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lt8/a1;

    invoke-direct {v4, p0}, Lt8/a1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v3, v4}, Lj8/h0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/e0;

    invoke-direct {v3, p0}, Lt8/e0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/h0;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    const v2, 0x7f12004d

    .line 12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/j1;

    invoke-direct {v3, p0}, Lt8/j1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/h0;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt8/m1;->o:Lt8/m1;

    invoke-virtual {v0, v1, v2}, Lj8/h0;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_8d
    return-void
.end method

.method public static synthetic b1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->u2(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private b2(ZLjava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->h0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lj8/k0;

    .line 2
    new-instance v1, Lcom/tebakgambar/question/RegularQuestionActivity$c;

    invoke-direct {v1, p0, v0, p2}, Lcom/tebakgambar/question/RegularQuestionActivity$c;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lj8/k0;Ljava/lang/Runnable;)V

    new-instance p2, Lt1/e;

    invoke-direct {p2}, Lt1/e;-><init>()V

    .line 3
    invoke-virtual {p2}, Lt1/e;->d()Lt1/c;

    move-result-object p2

    .line 4
    invoke-static {p1, p0, v1, p2}, Ly8/s;->d(ZLandroid/app/Activity;Ly8/s$a;Lt1/c;)V

    return-void
.end method

.method private b3(Ljava/lang/Integer;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1c

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->l0:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f120028

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->l0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_30

    .line 4
    :cond_1c
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->l0:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->l0:Lcom/tebakgambar/component/CustomTextView;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_30
    return-void
.end method

.method public static synthetic c1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->h2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private c2()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    new-instance v1, Lt8/b1;

    invoke-direct {v1, p0, v0}, Lt8/b1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V

    invoke-static {v1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method public static synthetic d1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->E2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private d2()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    goto :goto_15

    :cond_9
    iget v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->questionGlobalIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method private d3()V
    .registers 4

    .line 1
    new-instance v0, Lj8/f1;

    invoke-direct {v0, p0}, Lj8/f1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lj8/f1;->k(Ljava/lang/CharSequence;)Lj8/f1;

    move-result-object v0

    const v1, 0x7f12004d

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt8/g1;

    invoke-direct {v2, p0}, Lt8/g1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v1, v2}, Lj8/f1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    const v1, 0x7f120053

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt8/p0;

    invoke-direct {v2, p0}, Lt8/p0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v0, v1, v2}, Lj8/f1;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    const v1, 0x7f12005d

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt8/l1;->o:Lt8/l1;

    invoke-virtual {v0, v1, v2}, Lj8/f1;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic e1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->l2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private e2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-boolean v1, v0, Lcom/tebakgambar/question/g;->y:Z

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->e0()V

    :cond_9
    return-void
.end method

.method private e3()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const v3, 0x7f1200b8

    .line 2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f1200b9

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const v1, 0x7f1200ba

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const v1, 0x7f1200bb

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const v1, 0x7f1200bc

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 7
    new-instance v1, Lj8/c0;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v8, v2, v3

    const v3, 0x7f1201e4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v12, 0x7f12005d

    invoke-virtual {p0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v6, 0x7f1300ec

    const/4 v7, 0x0

    const-string v9, ""

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->I:Lj8/c0;

    .line 8
    new-instance v4, Lcom/tebakgambar/question/RegularQuestionActivity$d;

    invoke-direct {v4, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$d;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v1, v4}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 9
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->I:Lj8/c0;

    new-instance v4, Lt8/f0;

    invoke-direct {v4, p0}, Lt8/f0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->I:Lj8/c0;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lj8/c0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->I:Lj8/c0;

    invoke-virtual {v0}, Lj8/c0;->show()V

    return-void
.end method

.method public static synthetic f1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->k2(Lg5/s;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private f2()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity$a;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private f3(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic g1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->n2(Ljava/lang/Integer;)V

    return-void
.end method

.method private g2()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    .line 4
    invoke-static {v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->D:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    .line 9
    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 11
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->E:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private g3()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->d2()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - init"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnAddFreeAnswer"

    const-string v2, "answer page"

    const-string v3, "click on add free answer energy"

    .line 2
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->m2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic h2(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->addProgress(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$f;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$f;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    .line 3
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    :cond_36
    return-void
.end method

.method private h3(Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->d2()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_f

    const-string p1, "completed"

    goto :goto_11

    :cond_f
    const-string p1, "not complete"

    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickOnAddFreeAnswer"

    const-string v1, "answer page"

    const-string v2, "click on add free answer energy"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->s2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic i2(Lg5/s;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lt8/x0;

    invoke-direct {v0, p0}, Lt8/x0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    return-object p1
.end method

.method private i3(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->d2()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickOnUseFreeAnswer"

    const-string v1, "answer page"

    const-string v2, "click on use free answer"

    .line 2
    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->j2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private synthetic j2(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->L()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tebakgambar/model/enums/QuestionType;->REGULAR_KING:Lcom/tebakgambar/model/enums/QuestionType;

    goto :goto_25

    :cond_23
    sget-object v0, Lcom/tebakgambar/model/enums/QuestionType;->REGULAR:Lcom/tebakgambar/model/enums/QuestionType;

    .line 3
    :goto_25
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getFreeAnswer(Ljava/lang/String;Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$e;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$e;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    :cond_47
    return-void
.end method

.method private j3(Lt1/h$h;Landroid/content/Context;Lcom/tebakgambar/model/Question;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Object;",
            ">.h;",
            "Landroid/content/Context;",
            "Lcom/tebakgambar/model/Question;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p2}, Lcom/tebakgambar/model/Question;->getSize(Landroid/content/Context;)Ly8/v;

    move-result-object p2

    .line 2
    iget-object v0, p3, Lcom/tebakgambar/model/Question;->answerImageBytes:[B

    const v1, 0x7f08015a

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    .line 3
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v3, p3, Lcom/tebakgambar/model/Question;->answerImageBytes:[B

    .line 4
    invoke-virtual {v0, v3}, Lv1/j;->y([B)Lv1/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    sget-object v3, Lb2/b;->r:Lb2/b;

    .line 6
    invoke-virtual {v0, v3}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v0

    iget-object v3, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v3, v3, Lo8/o;->V:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v3}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 9
    :cond_2b
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v3, p3, Lcom/tebakgambar/model/Question;->imageBytes:[B

    .line 10
    invoke-virtual {v0, v3}, Lv1/j;->y([B)Lv1/d;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Ly8/v;->b()I

    move-result v3

    invoke-virtual {p2}, Ly8/v;->a()I

    move-result p2

    invoke-virtual {v0, v3, p2}, Lv1/c;->P(II)Lv1/c;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v2}, Lv1/c;->U(Z)Lv1/c;

    move-result-object p2

    sget-object v0, Lb2/b;->r:Lb2/b;

    .line 13
    invoke-virtual {p2, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p2

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$b;

    invoke-direct {v0, p0, p1, p3}, Lcom/tebakgambar/question/RegularQuestionActivity$b;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h$h;Lcom/tebakgambar/model/Question;)V

    .line 15
    invoke-virtual {p2, v0}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p2, p2, Lo8/o;->X:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p1, p2}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method public static synthetic k1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->o2(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic k2(Lg5/s;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lt8/y0;

    invoke-direct {v0, p0}, Lt8/y0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    return-object p1
.end method

.method private k3(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lj8/t;->i0()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v1, Lcom/tebakgambar/question/RegularQuestionActivity$h;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$h;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    .line 3
    new-instance v2, Le1/a;

    invoke-direct {v2, v0}, Le1/a;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    invoke-virtual {v2, v0}, Le1/a;->f(F)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5
    invoke-virtual {v2, v0}, Le1/a;->d(F)V

    .line 6
    invoke-virtual {v2}, Le1/a;->start()V

    .line 7
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lv1/c;->R(Landroid/graphics/drawable/Drawable;)Lv1/c;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 11
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const v0, 0x7f08010a

    .line 12
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    .line 13
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method public static synthetic l1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->J2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic l2(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->a3()V

    return-void
.end method

.method private l3()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->F:Lcom/tebakgambar/model/FreeAnswer;

    iget v0, v0, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    invoke-direct {p0, v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->i3(I)V

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 3
    :cond_12
    new-instance v1, Lt8/d1;

    invoke-direct {v1, p0, v0}, Lt8/d1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V

    invoke-static {v1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method public static synthetic m1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->B2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic m2(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->e3()V

    return-void
.end method

.method public static synthetic n1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->r2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n2(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->P2()V

    return-void
.end method

.method public static synthetic o1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->N2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private synthetic o2(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->R2()V

    return-void
.end method

.method public static synthetic p1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->U2(Lt1/h;)V

    return-void
.end method

.method private synthetic p2(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->Q2(I)V

    return-void
.end method

.method public static synthetic q1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->I2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic q2(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->S2()V

    return-void
.end method

.method public static synthetic r1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->L2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic r2(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static synthetic s1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->i2(Lg5/s;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic s2(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    :cond_12
    return-void
.end method

.method private synthetic t2(Ljava/lang/Integer;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->a2()V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->h3(Z)V

    :cond_e
    return-void
.end method

.method public static synthetic u1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->b3(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic u2(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lt1/h;->o()Lt1/h$h;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lj8/t;->i0()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Question;

    if-eqz v1, :cond_14

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->j3(Lt1/h$h;Landroid/content/Context;Lcom/tebakgambar/model/Question;)V

    goto :goto_1a

    .line 5
    :cond_14
    invoke-virtual {v0, p1}, Lt1/i;->d(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->c2()V

    .line 7
    :goto_1a
    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic v1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->C2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic v2(Lt1/h;)Lt1/h;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 2
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 4
    :cond_18
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->Y()V

    goto :goto_74

    .line 5
    :cond_1e
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->f0:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->j0:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->d0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {p1}, Lcom/tebakgambar/model/QuestionSavedData;->isUsingTimer()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->h0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->m0:Lcom/tebakgambar/component/CustomTextView;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_6b

    .line 13
    :cond_5d
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->h0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    :goto_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->G:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->G:J

    :goto_74
    return-object v1
.end method

.method public static synthetic w1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->G2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic w2(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickAnswerPage"

    const-string v1, "answer page"

    const-string v2, "click on answer box"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->v2(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private synthetic x2(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->T2()V

    return-void
.end method

.method public static synthetic y1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->p2(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic y2(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->c0()V

    return-void
.end method

.method public static synthetic z1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->x2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic z2(Lcom/tebakgambar/question/g$f;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/tebakgambar/question/g$f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0154

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v2

    iget v3, p1, Lcom/tebakgambar/question/g$f;->a:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v2

    sget-object v3, Lb2/b;->r:Lb2/b;

    .line 7
    invoke-virtual {v2, v3}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 9
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    invoke-virtual {p0}, Lj8/t;->g0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/e;

    invoke-direct {v1, p0, p1}, Lcom/tebakgambar/question/e;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V

    sget p1, Lcom/tebakgambar/question/RegularQuestionActivity;->L:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5d
    return-void
.end method


# virtual methods
.method protected A0(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lj8/t;->A0(Z)V

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->T:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_17

    .line 3
    :cond_f
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->T:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_17
    return-void
.end method

.method public T2()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj8/t;->i0()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {v0}, Ly8/y;->W(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    const v0, 0x7f1200aa

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->f3(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_18
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->F:Lcom/tebakgambar/model/FreeAnswer;

    iget v0, v0, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->l3()V

    return-void

    .line 6
    :cond_23
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->W2()V

    return-void
.end method

.method public c3(Ljava/lang/String;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43

    .line 7
    :cond_38
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0050

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a02a7

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/component/CustomTextView;

    const v4, 0x7f0a02c8

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tebakgambar/component/CustomTextView;

    const v5, 0x7f0a0149

    .line 13
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 14
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v6

    const v7, 0x7f080155

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v6

    .line 16
    invoke-virtual {v6, v1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v1

    sget-object v6, Lb2/b;->r:Lb2/b;

    .line 17
    invoke-virtual {v1, v6}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0701e5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v7}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v6, v7}, Lv1/c;->P(II)Lv1/c;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v5}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 20
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_c4

    const/16 v1, 0x8

    .line 21
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c7

    .line 22
    :cond_c4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    :goto_c7
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 26
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    new-instance v0, Lt8/g0;

    invoke-direct {v0, p0}, Lt8/g0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->J:Ly8/w;

    invoke-virtual {v0, p1, p2, p3}, Ly8/w;->o(IILandroid/content/Intent;)V

    const/16 p3, 0xb

    if-ne p1, p3, :cond_14

    const/4 p1, -0x1

    if-ne p2, p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->F()V

    :cond_14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/question/g;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/question/g;

    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    const p1, 0x7f0d0027

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/o;

    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1, v0}, Lo8/o;->w0(Lcom/tebakgambar/question/g;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, v0}, Lo8/o;->u0(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    .line 6
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 7
    new-instance p1, Ly8/w;

    invoke-direct {p1, p0}, Ly8/w;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->J:Ly8/w;

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1, v0}, Ly8/w;->u(Ly8/w$g;)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->questionGlobalIndex:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/question/g;->i0(I)V

    const p1, 0x7f0a0120

    const-string v0, "ca-app-pub-7269282889157841/8572238673"

    .line 10
    invoke-virtual {p0, p1, v0}, Lj8/t;->E0(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    const-string v0, "answer page"

    iput-object v0, p1, Lj8/k0;->H:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lj8/k0;->I:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    new-instance v0, Lt8/r0;

    invoke-direct {v0, p0}, Lt8/r0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->N:Landroidx/lifecycle/t;

    new-instance v0, Lt8/j0;

    invoke-direct {v0, p0}, Lt8/j0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 15
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->Q:Ly8/u;

    new-instance v0, Lt8/u0;

    invoke-direct {v0, p0}, Lt8/u0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 16
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->T:Ly8/u;

    new-instance v0, Lcom/tebakgambar/question/c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/c;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 17
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->S:Ly8/u;

    new-instance v0, Lt8/k0;

    invoke-direct {v0, p0}, Lt8/k0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 18
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->R:Ly8/u;

    new-instance v0, Lt8/l0;

    invoke-direct {v0, p0}, Lt8/l0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 19
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->W:Ly8/u;

    new-instance v0, Lt8/o0;

    invoke-direct {v0, p0}, Lt8/o0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 20
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->X:Ly8/u;

    new-instance v0, Lt8/q0;

    invoke-direct {v0, p0}, Lt8/q0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 21
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->Z:Ly8/u;

    new-instance v0, Lt8/s0;

    invoke-direct {v0, p0}, Lt8/s0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 22
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->Y:Ly8/u;

    new-instance v0, Lt8/n0;

    invoke-direct {v0, p0}, Lt8/n0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 23
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->U:Ly8/u;

    new-instance v0, Lt8/v0;

    invoke-direct {v0, p0}, Lt8/v0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    new-instance v0, Lt8/m0;

    invoke-direct {v0, p0}, Lt8/m0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 25
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->V:Ly8/u;

    new-instance v0, Lt8/t0;

    invoke-direct {v0, p0}, Lt8/t0;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 26
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->g2()V

    .line 27
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->V2()V

    .line 28
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity;->f2()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->J:Ly8/w;

    invoke-virtual {v0}, Ly8/w;->p()V

    .line 4
    invoke-super {p0}, Lj8/t;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 5
    :cond_e
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x37

    if-ne p1, p2, :cond_17

    .line 2
    invoke-static {p3}, Ly8/o;->b([I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->y:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_14
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->y:Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 12

    .line 1
    invoke-super {p0}, Lj8/t;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    if-eqz v0, :cond_24

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 5
    :cond_24
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-wide v0, v0, Lcom/tebakgambar/question/g;->H:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    .line 6
    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$k;

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-wide v7, v1, Lcom/tebakgambar/question/g;->H:J

    const-wide/16 v9, 0x3e8

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/tebakgambar/question/RegularQuestionActivity$k;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;JJ)V

    iput-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_4f

    .line 8
    :cond_41
    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$k;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tebakgambar/question/RegularQuestionActivity$k;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;JJ)V

    iput-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity;->C:Lcom/tebakgambar/question/RegularQuestionActivity$k;

    :cond_4f
    :goto_4f
    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.a (com.tebakgambar.question.RegularQuestionActivity$a)
.class Lcom/tebakgambar/question/RegularQuestionActivity$a;
.super Landroidx/activity/g;
.source "RegularQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->f2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$a;->d:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$a;->d:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v0}, Lcom/tebakgambar/model/QuestionSavedData;->isUsingTimer()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    :cond_10
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$a;->d:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_15
    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.b (com.tebakgambar.question.RegularQuestionActivity$b)
.class Lcom/tebakgambar/question/RegularQuestionActivity$b;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->j3(Lt1/h$h;Landroid/content/Context;Lcom/tebakgambar/model/Question;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "[B",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/h$h;

.field final synthetic b:Lcom/tebakgambar/model/Question;

.field final synthetic c:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h$h;Lcom/tebakgambar/model/Question;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->c:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->a:Lt1/h$h;

    iput-object p3, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->b:Lcom/tebakgambar/model/Question;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, [B

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/question/RegularQuestionActivity$b;->d(Ll2/b;[BLv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/question/RegularQuestionActivity$b;->c(Ljava/lang/Exception;[BLv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;[BLv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "[B",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->a:Lt1/h$h;

    invoke-virtual {p2}, Lt1/i;->a()Lt1/h;

    move-result-object p2

    invoke-virtual {p2}, Lt1/h;->v()Z

    move-result p2

    if-nez p2, :cond_12

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->a:Lt1/h$h;

    invoke-virtual {p2, p1}, Lt1/i;->c(Ljava/lang/Exception;)V

    goto :goto_19

    .line 3
    :cond_12
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :goto_19
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ll2/b;[BLv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "[B",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->a:Lt1/h$h;

    iget-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->b:Lcom/tebakgambar/model/Question;

    invoke-virtual {p1, p2}, Lt1/i;->d(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$b;->c:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->Z1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.c (com.tebakgambar.question.RegularQuestionActivity$c)
.class Lcom/tebakgambar/question/RegularQuestionActivity$c;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Ly8/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->b2(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/k0;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lj8/k0;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->c:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->a:Lj8/k0;

    iput-object p3, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->c:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->T:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->a:Lj8/k0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->a:Lj8/k0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->c:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iput-object p1, v0, Lcom/tebakgambar/question/g;->B:Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$c;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_13

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_13
    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.d (com.tebakgambar.question.RegularQuestionActivity$d)
.class Lcom/tebakgambar/question/RegularQuestionActivity$d;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->e3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->p()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->K1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    goto :goto_40

    .line 5
    :cond_2d
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const v1, 0x7f1201e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->b0()V

    :cond_40
    :goto_40
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->J1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$d;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->b0()V

    :cond_24
    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.e (com.tebakgambar.question.RegularQuestionActivity$e)
.class Lcom/tebakgambar/question/RegularQuestionActivity$e;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->j2(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$e;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$e;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->X1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$e;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->M1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$e;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const p2, 0x7f12009b

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.f (com.tebakgambar.question.RegularQuestionActivity$f)
.class Lcom/tebakgambar/question/RegularQuestionActivity$f;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->h2(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/question/RegularQuestionActivity$f;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$f;->d()V

    return-void
.end method

.method private synthetic d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->Q1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-boolean v0, v0, Lcom/tebakgambar/question/g;->y:Z

    if-nez v0, :cond_26

    .line 3
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->X1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->M1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    .line 5
    :cond_26
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->l0()V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->P1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/tebakgambar/question/f;

    invoke-direct {p2, p0}, Lcom/tebakgambar/question/f;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$f;)V

    .line 7
    invoke-static {}, Lcom/tebakgambar/question/RegularQuestionActivity;->N1()I

    move-result v0

    invoke-static {}, Lcom/tebakgambar/question/RegularQuestionActivity;->O1()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_52

    .line 9
    :cond_46
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const p2, 0x7f12009a

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$f;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->Q1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.question.f (com.tebakgambar.question.f)
.class public final synthetic Lcom/tebakgambar/question/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$f;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/f;->o:Lcom/tebakgambar/question/RegularQuestionActivity$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/question/f;->o:Lcom/tebakgambar/question/RegularQuestionActivity$f;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$f;->c(Lcom/tebakgambar/question/RegularQuestionActivity$f;)V

    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.g (com.tebakgambar.question.RegularQuestionActivity$g)
.class Lcom/tebakgambar/question/RegularQuestionActivity$g;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->N2(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->m0()V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->X1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->M1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p2, p2, Lo8/o;->S:Lcom/tebakgambar/component/CustomEditText;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object p1, p1, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    iget-object p1, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 6
    :cond_37
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const p2, 0x7f1200b3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$g;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const p2, 0x7f1200b3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->L1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.h (com.tebakgambar.question.RegularQuestionActivity$h)
.class Lcom/tebakgambar/question/RegularQuestionActivity$h;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;->k3(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$h;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/question/RegularQuestionActivity$h;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/question/RegularQuestionActivity$h;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$h;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$h;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.i (com.tebakgambar.question.RegularQuestionActivity$i)
.class public Lcom/tebakgambar/question/RegularQuestionActivity$i;
.super Ljava/lang/Object;
.source "RegularQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->m(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->y()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->l()V

    return-void
.end method

.method public static synthetic d(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->q()V

    return-void
.end method

.method public static synthetic g(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->k()V

    return-void
.end method

.method public static synthetic h(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->r()V

    return-void
.end method

.method public static synthetic i(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->x()V

    return-void
.end method

.method public static synthetic j(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->o(Landroid/view/View;)V

    return-void
.end method

.method private k()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const/4 v1, 0x1

    new-instance v2, Lt8/s1;

    invoke-direct {v2, p0}, Lt8/s1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v0, v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->S1(Lcom/tebakgambar/question/RegularQuestionActivity;ZLjava/lang/Runnable;)V
    :try_end_13
    .catch Ly8/n; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_56

    :catch_14
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    new-instance v2, Lt8/u1;

    invoke-direct {v2, p0}, Lt8/u1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->T1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-static {v1, v0, v2}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_56

    .line 6
    :cond_2e
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    new-instance v7, Lj8/c0;

    iget-object v2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const v3, 0x7f1300ec

    const/4 v4, 0x1

    const v1, 0x7f1200e7

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0701e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0, v7}, Lcom/tebakgambar/question/RegularQuestionActivity;->V1(Lcom/tebakgambar/question/RegularQuestionActivity;Lj8/c0;)Lj8/c0;

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->U1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Lj8/c0;->show()V

    :goto_56
    return-void
.end method

.method private synthetic l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->Y1(Lcom/tebakgambar/question/RegularQuestionActivity;)Ly8/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->B:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->y(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic m(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->k()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->y()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->x()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic q()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->Y1(Lcom/tebakgambar/question/RegularQuestionActivity;)Ly8/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->B:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->A(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic r()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->Y1(Lcom/tebakgambar/question/RegularQuestionActivity;)Ly8/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v1, v1, Lcom/tebakgambar/question/g;->B:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

.method private x()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const/4 v1, 0x0

    new-instance v2, Lt8/t1;

    invoke-direct {v2, p0}, Lt8/t1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v0, v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->S1(Lcom/tebakgambar/question/RegularQuestionActivity;ZLjava/lang/Runnable;)V
    :try_end_b
    .catch Ly8/n; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_25

    :catch_c
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    new-instance v2, Lt8/w1;

    invoke-direct {v2, p0}, Lt8/w1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->T1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-static {v1, v0, v2}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_25
    return-void
.end method

.method private y()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const/4 v1, 0x0

    new-instance v2, Lt8/v1;

    invoke-direct {v2, p0}, Lt8/v1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v0, v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->S1(Lcom/tebakgambar/question/RegularQuestionActivity;ZLjava/lang/Runnable;)V
    :try_end_b
    .catch Ly8/n; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_25

    :catch_c
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    new-instance v2, Lt8/r1;

    invoke-direct {v2, p0}, Lt8/r1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-static {v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity;->T1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    invoke-static {v1, v0, v2}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_25
    return-void
.end method


# virtual methods
.method public s(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_1d
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->D()V

    return-void
.end method

.method public t(Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickAnswerPage"

    const-string v1, "answer page"

    const-string v2, "click on hint"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->K()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->j0()V

    goto :goto_46

    .line 4
    :cond_41
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->R1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    :goto_46
    return-void
.end method

.method public u(Landroid/view/View;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W1(Lcom/tebakgambar/question/RegularQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p1

    iget p1, p1, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->r()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2
    new-instance p1, Lh8/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lh8/a;-><init>(Z)V

    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$j;

    iget-object v1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tebakgambar/question/RegularQuestionActivity$j;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/RegularQuestionActivity$a;)V

    invoke-static {p1, v0}, Lk8/c;->w(Lh8/a;Landroid/os/Handler;)Lk8/c;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v1, "TGInAppReviewDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->show(Landroidx/fragment/app/n;Ljava/lang/String;)V

    goto :goto_4a

    .line 4
    :cond_3a
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->e0()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception p1

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :goto_4a
    return-void
.end method

.method public v(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_1d
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->k()Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public w(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_50

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->H1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_65

    .line 7
    :cond_50
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_65
    :goto_65
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo8/m0;->u0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo8/m0;

    move-result-object p1

    .line 10
    iget-object v0, p1, Lo8/m0;->P:Landroid/widget/ImageView;

    new-instance v1, Lt8/n1;

    invoke-direct {v1, p0}, Lt8/n1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p1, Lo8/m0;->Q:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lt8/p1;

    invoke-direct {v1, p0}, Lt8/p1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p1, Lo8/m0;->R:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lt8/q1;

    invoke-direct {v1, p0}, Lt8/q1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p1, Lo8/m0;->S:Lcom/tebakgambar/component/CustomButton;

    new-instance v1, Lt8/o1;

    invoke-direct {v1, p0}, Lt8/o1;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class t8.n1 (t8.n1)
.class public final synthetic Lt8/n1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/n1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/n1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->a(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V

    return-void
.end method

###### Class t8.o1 (t8.o1)
.class public final synthetic Lt8/o1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/o1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/o1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->d(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V

    return-void
.end method

###### Class t8.p1 (t8.p1)
.class public final synthetic Lt8/p1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/p1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/p1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->e(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V

    return-void
.end method

###### Class t8.q1 (t8.q1)
.class public final synthetic Lt8/q1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/q1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/q1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->j(Lcom/tebakgambar/question/RegularQuestionActivity$i;Landroid/view/View;)V

    return-void
.end method

###### Class t8.r1 (t8.r1)
.class public final synthetic Lt8/r1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/r1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/r1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->b(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class t8.s1 (t8.s1)
.class public final synthetic Lt8/s1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/s1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/s1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->c(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class t8.t1 (t8.t1)
.class public final synthetic Lt8/t1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/t1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/t1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->f(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class t8.u1 (t8.u1)
.class public final synthetic Lt8/u1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/u1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/u1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->g(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class t8.v1 (t8.v1)
.class public final synthetic Lt8/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/v1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/v1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->h(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class t8.w1 (t8.w1)
.class public final synthetic Lt8/w1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity$i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/w1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/w1;->o:Lcom/tebakgambar/question/RegularQuestionActivity$i;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity$i;->i(Lcom/tebakgambar/question/RegularQuestionActivity$i;)V

    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.j (com.tebakgambar.question.RegularQuestionActivity$j)
.class Lcom/tebakgambar/question/RegularQuestionActivity$j;
.super Landroid/os/Handler;
.source "RegularQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method private constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/RegularQuestionActivity$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$j;-><init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/RegularQuestionActivity;->G1(Lcom/tebakgambar/question/RegularQuestionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_20
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object p1, p1, Lo8/o;->U:Lcom/tebakgambar/component/ClickableImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->I1(Lcom/tebakgambar/question/RegularQuestionActivity;)V

    return-void

    .line 7
    :cond_36
    iget-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$j;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {p1}, Lcom/tebakgambar/question/g;->e0()V

    return-void
.end method

###### Class com.tebakgambar.question.RegularQuestionActivity.k (com.tebakgambar.question.RegularQuestionActivity$k)
.class Lcom/tebakgambar/question/RegularQuestionActivity$k;
.super Landroid/os/CountDownTimer;
.source "RegularQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/RegularQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->m0:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->d0()V

    return-void
.end method

.method public onTick(J)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->A:Lcom/tebakgambar/question/g;

    iput-wide p1, v1, Lcom/tebakgambar/question/g;->H:J

    const-wide/16 v1, 0x3e8

    .line 2
    div-long/2addr p1, v1

    const v1, 0x7f110006

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x5

    cmp-long v4, p1, v2

    if-gtz v4, :cond_2d

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->m0:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "#E44144"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_43

    .line 6
    :cond_2d
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->m0:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :goto_43
    iget-object v0, p0, Lcom/tebakgambar/question/RegularQuestionActivity$k;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/RegularQuestionActivity;->z:Lo8/o;

    iget-object v0, v0, Lo8/o;->m0:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.tebakgambar.question.c (com.tebakgambar.question.c)
.class public final synthetic Lcom/tebakgambar/question/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/c;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/question/c;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Lcom/tebakgambar/question/g$f;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->E1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

###### Class com.tebakgambar.question.d (com.tebakgambar.question.d)
.class public final synthetic Lcom/tebakgambar/question/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;

.field public final synthetic p:Lcom/tebakgambar/question/g$f;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/d;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/d;->p:Lcom/tebakgambar/question/g$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/question/d;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, p0, Lcom/tebakgambar/question/d;->p:Lcom/tebakgambar/question/g$f;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->a1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

###### Class com.tebakgambar.question.e (com.tebakgambar.question.e)
.class public final synthetic Lcom/tebakgambar/question/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;

.field public final synthetic p:Lcom/tebakgambar/question/g$f;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/e;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/e;->p:Lcom/tebakgambar/question/g$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/question/e;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, p0, Lcom/tebakgambar/question/e;->p:Lcom/tebakgambar/question/g$f;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->A1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/tebakgambar/question/g$f;)V

    return-void
.end method

###### Class t8.a1 (t8.a1)
.class public final synthetic Lt8/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/a1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/a1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->d1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.b1 (t8.b1)
.class public final synthetic Lt8/b1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;

.field public final synthetic b:Lg5/s;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/b1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lt8/b1;->b:Lg5/s;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/b1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, p0, Lt8/b1;->b:Lg5/s;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->f1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.c1 (t8.c1)
.class public final synthetic Lt8/c1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;

.field public final synthetic b:Lg5/s;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/c1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lt8/c1;->b:Lg5/s;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/c1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, p0, Lt8/c1;->b:Lg5/s;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->s1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.d1 (t8.d1)
.class public final synthetic Lt8/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;

.field public final synthetic b:Lg5/s;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/d1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iput-object p2, p0, Lt8/d1;->b:Lg5/s;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/d1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    iget-object v1, p0, Lt8/d1;->b:Lg5/s;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity;->B1(Lcom/tebakgambar/question/RegularQuestionActivity;Lg5/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.e0 (t8.e0)
.class public final synthetic Lt8/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/e0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/e0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->U0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.e1 (t8.e1)
.class public final synthetic Lt8/e1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/e1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/e1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->b1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t8.f0 (t8.f0)
.class public final synthetic Lt8/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/f0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lt8/f0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->X0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class t8.f1 (t8.f1)
.class public final synthetic Lt8/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/f1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/f1;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->x1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t8.g0 (t8.g0)
.class public final synthetic Lt8/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/g0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lt8/g0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->q1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class t8.g1 (t8.g1)
.class public final synthetic Lt8/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/g1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/g1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->l1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.h0 (t8.h0)
.class public final synthetic Lt8/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/h0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/h0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->Y0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.h1 (t8.h1)
.class public final synthetic Lt8/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/h1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/h1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->m1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.i0 (t8.i0)
.class public final synthetic Lt8/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/i0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/i0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->z1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.i1 (t8.i1)
.class public final synthetic Lt8/i1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/i1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/i1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->v1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.j0 (t8.j0)
.class public final synthetic Lt8/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/j0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/j0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Lt1/h;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->p1(Lcom/tebakgambar/question/RegularQuestionActivity;Lt1/h;)V

    return-void
.end method

###### Class t8.j1 (t8.j1)
.class public final synthetic Lt8/j1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/j1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/j1;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->w1(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.k0 (t8.k0)
.class public final synthetic Lt8/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/k0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/k0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->e1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class t8.k1 (t8.k1)
.class public final synthetic Lt8/k1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lt8/k1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt8/k1;

    invoke-direct {v0}, Lt8/k1;-><init>()V

    sput-object v0, Lt8/k1;->o:Lt8/k1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->V0(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.l0 (t8.l0)
.class public final synthetic Lt8/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/l0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/l0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->h1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class t8.l1 (t8.l1)
.class public final synthetic Lt8/l1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lt8/l1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt8/l1;

    invoke-direct {v0}, Lt8/l1;-><init>()V

    sput-object v0, Lt8/l1;->o:Lt8/l1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->r1(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.m0 (t8.m0)
.class public final synthetic Lt8/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/m0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/m0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->i1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class t8.m1 (t8.m1)
.class public final synthetic Lt8/m1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lt8/m1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt8/m1;

    invoke-direct {v0}, Lt8/m1;-><init>()V

    sput-object v0, Lt8/m1;->o:Lt8/m1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->C1(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.n0 (t8.n0)
.class public final synthetic Lt8/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/n0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/n0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->W0(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.o0 (t8.o0)
.class public final synthetic Lt8/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/o0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/o0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->g1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.p0 (t8.p0)
.class public final synthetic Lt8/p0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/p0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/p0;->o:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/RegularQuestionActivity;->Z0(Lcom/tebakgambar/question/RegularQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.q0 (t8.q0)
.class public final synthetic Lt8/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/q0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/q0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->k1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.r0 (t8.r0)
.class public final synthetic Lt8/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/r0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/r0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->u1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.s0 (t8.s0)
.class public final synthetic Lt8/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/s0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/s0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->y1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.t0 (t8.t0)
.class public final synthetic Lt8/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/t0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/t0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->D1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Integer;)V

    return-void
.end method

###### Class t8.u0 (t8.u0)
.class public final synthetic Lt8/u0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/u0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/u0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->c3(Ljava/lang/String;)V

    return-void
.end method

###### Class t8.v0 (t8.v0)
.class public final synthetic Lt8/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/v0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lt8/v0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->n1(Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class t8.w0 (t8.w0)
.class public final synthetic Lt8/w0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/w0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3

    iget-object v0, p0, Lt8/w0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->F1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

###### Class t8.x0 (t8.x0)
.class public final synthetic Lt8/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/x0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/x0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->c1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class t8.y0 (t8.y0)
.class public final synthetic Lt8/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/y0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/y0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->j1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class t8.z0 (t8.z0)
.class public final synthetic Lt8/z0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/RegularQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/RegularQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/z0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/z0;->a:Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity;->o1(Lcom/tebakgambar/question/RegularQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
