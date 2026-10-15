###### Class androidx.appcompat.widget.m (androidx.appcompat.widget.m)
.class Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "AppCompatEmojiTextHelper.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lm0/f;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    .line 3
    new-instance v0, Lm0/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm0/f;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/m;->b:Lm0/f;

    return-void
.end method


# virtual methods
.method a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Lm0/f;

    invoke-virtual {v0, p1}, Lm0/f;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lf/j;->g0:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_d
    sget p2, Lf/j;->u0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    .line 5
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/m;->d(Z)V

    return-void

    :catchall_21
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2
.end method

.method c(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Lm0/f;

    invoke-virtual {v0, p1}, Lm0/f;->b(Z)V

    return-void
.end method

.method d(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Lm0/f;

    invoke-virtual {v0, p1}, Lm0/f;->c(Z)V

    return-void
.end method
