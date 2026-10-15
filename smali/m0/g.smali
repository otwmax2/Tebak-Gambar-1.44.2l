###### Class m0.g (m0.g)
.class final Lm0/g;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/g$a;
    }
.end annotation


# instance fields
.field private final o:Landroid/widget/EditText;

.field private final p:Z

.field private q:Landroidx/emoji2/text/d$e;

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lm0/g;->r:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lm0/g;->s:I

    .line 4
    iput-object p1, p0, Lm0/g;->o:Landroid/widget/EditText;

    .line 5
    iput-boolean p2, p0, Lm0/g;->p:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lm0/g;->t:Z

    return-void
.end method

.method private a()Landroidx/emoji2/text/d$e;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/g;->q:Landroidx/emoji2/text/d$e;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Lm0/g$a;

    iget-object v1, p0, Lm0/g;->o:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lm0/g$a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lm0/g;->q:Landroidx/emoji2/text/d$e;

    .line 3
    :cond_d
    iget-object v0, p0, Lm0/g;->q:Landroidx/emoji2/text/d$e;

    return-object v0
.end method

.method static b(Landroid/widget/EditText;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 4
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 5
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/emoji2/text/d;->o(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    invoke-static {p0, p1, v0}, Lm0/d;->b(Landroid/text/Spannable;II)V

    :cond_21
    return-void
.end method

.method private d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm0/g;->t:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lm0/g;->p:Z

    if-nez v0, :cond_f

    invoke-static {}, Landroidx/emoji2/text/d;->h()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
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

.method public c(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lm0/g;->t:Z

    if-eq v0, p1, :cond_22

    .line 2
    iget-object v0, p0, Lm0/g;->q:Landroidx/emoji2/text/d$e;

    if-eqz v0, :cond_11

    .line 3
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v0

    iget-object v1, p0, Lm0/g;->q:Landroidx/emoji2/text/d$e;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/d;->t(Landroidx/emoji2/text/d$e;)V

    .line 4
    :cond_11
    iput-boolean p1, p0, Lm0/g;->t:Z

    if-eqz p1, :cond_22

    .line 5
    iget-object p1, p0, Lm0/g;->o:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/d;->d()I

    move-result v0

    invoke-static {p1, v0}, Lm0/g;->b(Landroid/widget/EditText;I)V

    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    .line 1
    iget-object v0, p0, Lm0/g;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-direct {p0}, Lm0/g;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_43

    :cond_f
    if-gt p3, p4, :cond_43

    .line 2
    instance-of p3, p1, Landroid/text/Spannable;

    if-eqz p3, :cond_43

    .line 3
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/emoji2/text/d;->d()I

    move-result p3

    if-eqz p3, :cond_38

    const/4 v0, 0x1

    if-eq p3, v0, :cond_26

    const/4 p1, 0x3

    if-eq p3, p1, :cond_38

    goto :goto_43

    .line 4
    :cond_26
    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 5
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v0

    add-int v3, p2, p4

    iget v4, p0, Lm0/g;->r:I

    iget v5, p0, Lm0/g;->s:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/d;->r(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    goto :goto_43

    .line 6
    :cond_38
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object p1

    invoke-direct {p0}, Lm0/g;->a()Landroidx/emoji2/text/d$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/d;->s(Landroidx/emoji2/text/d$e;)V

    :cond_43
    :goto_43
    return-void
.end method

###### Class m0.g.a (m0.g$a)
.class Lm0/g$a;
.super Landroidx/emoji2/text/d$e;
.source "EmojiTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/d$e;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lm0/g$a;->a:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/emoji2/text/d$e;->b()V

    .line 2
    iget-object v0, p0, Lm0/g$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lm0/g;->b(Landroid/widget/EditText;I)V

    return-void
.end method
