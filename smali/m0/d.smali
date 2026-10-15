###### Class m0.d (m0.d)
.class final Lm0/d;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/d$a;
    }
.end annotation


# instance fields
.field private final o:Landroid/widget/TextView;

.field private p:Landroidx/emoji2/text/d$e;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/d;->o:Landroid/widget/TextView;

    return-void
.end method

.method private a()Landroidx/emoji2/text/d$e;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/d;->p:Landroidx/emoji2/text/d$e;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Lm0/d$a;

    iget-object v1, p0, Lm0/d;->o:Landroid/widget/TextView;

    invoke-direct {v0, v1, p0}, Lm0/d$a;-><init>(Landroid/widget/TextView;Lm0/d;)V

    iput-object v0, p0, Lm0/d;->p:Landroidx/emoji2/text/d$e;

    .line 3
    :cond_d
    iget-object v0, p0, Lm0/d;->p:Landroidx/emoji2/text/d$e;

    return-object v0
.end method

.method static b(Landroid/text/Spannable;II)V
    .registers 3

    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    .line 1
    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_13

    :cond_8
    if-ltz p1, :cond_e

    .line 2
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_13

    :cond_e
    if-ltz p2, :cond_13

    .line 3
    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    .line 1
    iget-object v0, p0, Lm0/d;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    .line 2
    :cond_9
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/d;->d()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4c

    return-object p1

    :cond_1a
    const/4 v0, 0x0

    if-nez p6, :cond_2e

    if-nez p5, :cond_2e

    .line 3
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    if-nez p4, :cond_2e

    .line 4
    iget-object p4, p0, Lm0/d;->o:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    if-ne p1, p4, :cond_2e

    const/4 v1, 0x0

    :cond_2e
    if-eqz v1, :cond_4b

    if-eqz p1, :cond_4b

    if-nez p2, :cond_3b

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ne p3, p4, :cond_3b

    goto :goto_3f

    .line 6
    :cond_3b
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 7
    :goto_3f
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p1, v0, p3}, Landroidx/emoji2/text/d;->p(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_4b
    return-object p1

    .line 8
    :cond_4c
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object p2

    invoke-direct {p0}, Lm0/d;->a()Landroidx/emoji2/text/d$e;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/emoji2/text/d;->s(Landroidx/emoji2/text/d$e;)V

    return-object p1
.end method

###### Class m0.d.a (m0.d$a)
.class Lm0/d$a;
.super Landroidx/emoji2/text/d$e;
.source "EmojiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
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
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lm0/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lm0/d;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/d$e;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lm0/d$a;->a:Ljava/lang/ref/Reference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lm0/d$a;->b:Ljava/lang/ref/Reference;

    return-void
.end method

.method private c(Landroid/widget/TextView;Landroid/text/InputFilter;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    if-nez p1, :cond_6

    goto :goto_1a

    .line 1
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    const/4 v1, 0x0

    .line 2
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 3
    aget-object v2, p1, v1

    if-ne v2, p2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/emoji2/text/d$e;->b()V

    .line 2
    iget-object v0, p0, Lm0/d$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lm0/d$a;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/InputFilter;

    .line 4
    invoke-direct {p0, v0, v1}, Lm0/d$a;->c(Landroid/widget/TextView;Landroid/text/InputFilter;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 5
    :cond_1a
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7
    invoke-static {}, Landroidx/emoji2/text/d;->b()Landroidx/emoji2/text/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/emoji2/text/d;->o(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    return-void

    .line 8
    :cond_2f
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 9
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    instance-of v0, v2, Landroid/text/Spannable;

    if-eqz v0, :cond_43

    .line 12
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, v3}, Lm0/d;->b(Landroid/text/Spannable;II)V

    :cond_43
    return-void
.end method
