###### Class j8.a0 (j8.a0)
.class public Lj8/a0;
.super Landroid/app/Dialog;
.source "CustomDialogImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/a0$d;,
        Lj8/a0$c;
    }
.end annotation


# instance fields
.field A:Landroid/widget/LinearLayout;

.field B:Landroid/widget/LinearLayout;

.field C:Landroid/widget/RelativeLayout;

.field D:Landroid/widget/RelativeLayout;

.field E:Landroid/widget/RelativeLayout;

.field F:Landroid/widget/RelativeLayout;

.field G:Landroid/content/Context;

.field H:Lj8/a0$d;

.field I:Lj8/a0$c;

.field public J:Ljava/lang/String;

.field o:Lcom/tebakgambar/component/CustomTextView;

.field p:Lcom/tebakgambar/component/CustomTextView;

.field q:Lcom/tebakgambar/component/CustomEditText;

.field r:Lcom/tebakgambar/component/CustomButton;

.field s:Lcom/tebakgambar/component/CustomButton;

.field t:Lcom/tebakgambar/component/CustomButton;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/ImageView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ProgressBar;

.field y:Landroid/widget/ProgressBar;

.field z:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 2
    iput-object p2, p0, Lj8/a0;->J:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lj8/a0;->G:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lj8/a0;->b()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    new-instance v0, Lj8/a0$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj8/a0$a;-><init>(Lj8/a0;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    :cond_19
    return-void
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0d0054

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0a014f

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lj8/a0;->u:Landroid/widget/ImageView;

    const v0, 0x7f0a0168

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lj8/a0;->v:Landroid/widget/ImageView;

    const v0, 0x7f0a0155

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lj8/a0;->w:Landroid/widget/ImageView;

    const v0, 0x7f0a019a

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj8/a0;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0188

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj8/a0;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f0a019f

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lj8/a0;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0223

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lj8/a0;->D:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0220

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lj8/a0;->C:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0221

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lj8/a0;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a020c

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lj8/a0;->z:Landroid/widget/ProgressBar;

    const v0, 0x7f0a020d

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lj8/a0;->y:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0209

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lj8/a0;->x:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0106

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomEditText;

    iput-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    const v0, 0x7f0a02cb

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/a0;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02d1

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lj8/a0;->p:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0077

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/a0;->r:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a0093

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/a0;->s:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a0082

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    .line 21
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    new-instance v1, Lj8/a0$b;

    invoke-direct {v1, p0}, Lj8/a0$b;-><init>(Lj8/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 23
    iget-object v0, p0, Lj8/a0;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lj8/a0;->r:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lj8/a0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lj8/a0;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lj8/a0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lj8/a0;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lj8/a0;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lj8/a0;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lj8/a0;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-static {v0}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 34
    iget-object v0, p0, Lj8/a0;->F:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 35
    :cond_11f
    invoke-direct {p0}, Lj8/a0;->a()V

    return-void
.end method


# virtual methods
.method public d(Lj8/a0$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/a0;->I:Lj8/a0$c;

    return-void
.end method

.method public e(Lj8/a0$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/a0;->H:Lj8/a0$d;

    return-void
.end method

.method public o(Ljava/lang/String;Z)V
    .registers 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    .line 1
    iget-object v2, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10

    .line 2
    :cond_b
    iget-object v2, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    :goto_10
    iget-object v2, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    if-eqz p2, :cond_15

    const/4 v0, 0x0

    :cond_15
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object p2, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj8/a0;->C:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_102

    iget-object v0, p0, Lj8/a0;->u:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    goto/16 :goto_102

    .line 2
    :cond_a
    iget-object v0, p0, Lj8/a0;->D:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_fc

    iget-object v0, p0, Lj8/a0;->v:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_14

    goto/16 :goto_fc

    .line 3
    :cond_14
    iget-object v0, p0, Lj8/a0;->F:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_f6

    iget-object v0, p0, Lj8/a0;->w:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1e

    goto/16 :goto_f6

    .line 4
    :cond_1e
    iget-object v0, p0, Lj8/a0;->B:Landroid/widget/LinearLayout;

    const-string v1, "input_method"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a4

    iget-object v0, p0, Lj8/a0;->s:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_2b

    goto/16 :goto_a4

    .line 5
    :cond_2b
    iget-object v0, p0, Lj8/a0;->r:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_4a

    .line 6
    iget-object p1, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iget-object p1, p0, Lj8/a0;->I:Lj8/a0$c;

    invoke-interface {p1}, Lj8/a0$c;->a()V

    goto/16 :goto_107

    .line 10
    :cond_4a
    iget-object v0, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_107

    .line 11
    iget-object p1, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 12
    iget-object v0, p0, Lj8/a0;->J:Ljava/lang/String;

    const v1, 0x7f120109

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 13
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lj8/a0;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 14
    :cond_8f
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    iget-object v2, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 15
    :goto_9e
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_107

    .line 16
    :cond_a4
    :goto_a4
    iget-object p1, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e9

    .line 18
    iget-object p1, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 20
    iget-object p1, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 21
    iget-object p1, p0, Lj8/a0;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 22
    iget-object p1, p0, Lj8/a0;->s:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 23
    iget-object p1, p0, Lj8/a0;->I:Lj8/a0$c;

    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lj8/a0$c;->b(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lj8/a0;->z:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_107

    .line 25
    :cond_e9
    iget-object p1, p0, Lj8/a0;->G:Landroid/content/Context;

    const v0, 0x7f120165

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_107

    .line 26
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lj8/a0;->H:Lj8/a0$d;

    invoke-interface {p1}, Lj8/a0$d;->a()V

    goto :goto_107

    .line 27
    :cond_fc
    :goto_fc
    iget-object p1, p0, Lj8/a0;->H:Lj8/a0$d;

    invoke-interface {p1}, Lj8/a0$d;->b()V

    goto :goto_107

    .line 28
    :cond_102
    :goto_102
    iget-object p1, p0, Lj8/a0;->H:Lj8/a0$d;

    invoke-interface {p1}, Lj8/a0$d;->c()V

    :cond_107
    :goto_107
    return-void
.end method

.method public p(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lj8/a0;->A:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lj8/a0;->E:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    iget-object v3, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lj8/a0;->G:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    if-nez p1, :cond_50

    .line 6
    iget-object p1, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lj8/a0;->o:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f1201c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lj8/a0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    new-array v0, v2, [Landroid/text/InputFilter;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_fc

    .line 10
    :cond_50
    iget-object v0, p0, Lj8/a0;->J:Ljava/lang/String;

    const v3, 0x7f120109

    const-string v5, " "

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 11
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lj8/a0;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    .line 12
    :cond_86
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lj8/a0;->G:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_a4
    iget-object v0, p0, Lj8/a0;->t:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lj8/a0;->o:Lcom/tebakgambar/component/CustomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v4, :cond_b5

    const-string p1, "Tweet"

    goto :goto_b7

    :cond_b5
    const-string p1, "Share"

    :goto_b7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this post "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p1, v4, [Landroid/text/InputFilter;

    .line 15
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x8c

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p1, v2

    .line 16
    iget-object v0, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 17
    iget-object p1, p0, Lj8/a0;->p:Lcom/tebakgambar/component/CustomTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lj8/a0;->q:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lj8/a0;->p:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_fc
    return-void
.end method

###### Class j8.a0.a (j8.a0$a)
.class Lj8/a0$a;
.super Landroidx/activity/g;
.source "CustomDialogImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/a0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lj8/a0;


# direct methods
.method constructor <init>(Lj8/a0;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/a0$a;->d:Lj8/a0;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/a0$a;->d:Lj8/a0;

    iget-object v0, v0, Lj8/a0;->I:Lj8/a0$c;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lj8/a0$c;->a()V

    :cond_9
    return-void
.end method

###### Class j8.a0.b (j8.a0$b)
.class Lj8/a0$b;
.super Ljava/lang/Object;
.source "CustomDialogImage.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/a0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lj8/a0;


# direct methods
.method constructor <init>(Lj8/a0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/a0$b;->o:Lj8/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget-object p2, p0, Lj8/a0$b;->o:Lj8/a0;

    iget-object p2, p2, Lj8/a0;->p:Lcom/tebakgambar/component/CustomTextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0x8c

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class j8.a0.c (j8.a0$c)
.class public interface abstract Lj8/a0$c;
.super Ljava/lang/Object;
.source "CustomDialogImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

###### Class j8.a0.d (j8.a0$d)
.class public interface abstract Lj8/a0$d;
.super Ljava/lang/Object;
.source "CustomDialogImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
