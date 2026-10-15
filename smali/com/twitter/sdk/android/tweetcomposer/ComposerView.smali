###### Class com.twitter.sdk.android.tweetcomposer.ComposerView (com.twitter.sdk.android.tweetcomposer.ComposerView)
.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerView;
.super Landroid/widget/LinearLayout;
.source "ComposerView.java"


# instance fields
.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/EditText;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/Button;

.field t:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

.field u:Landroid/view/View;

.field v:Landroid/graphics/drawable/ColorDrawable;

.field w:Landroid/widget/ImageView;

.field x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

.field private y:Lf8/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j(I)V

    return-void
.end method

.method public static synthetic d(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->g(Landroid/view/View;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/t;->o(Landroid/content/Context;)Lf8/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->y:Lf8/t;

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetcomposer/g;->a:I

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->v:Landroid/graphics/drawable/ColorDrawable;

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/i;->b:I

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a()V

    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/a$b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic i(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/a$b;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic j(I)V
    .registers 3

    if-lez p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->u:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 2
    :cond_9
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->u:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    return-void
.end method


# virtual methods
.method e()V
    .registers 2

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->o:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->c:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->p:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->q:Landroid/widget/EditText;

    .line 4
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->b:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->r:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->i:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->s:Landroid/widget/Button;

    .line 6
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->e:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->t:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    .line 7
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->d:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->u:Landroid/view/View;

    .line 8
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/h;->h:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->w:Landroid/widget/ImageView;

    return-void
.end method

.method getTweetText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->e()V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/c;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/c;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->s:Landroid/widget/Button;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/b;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/b;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/d;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/d;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->t:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/e;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/e;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;->setScrollViewListener(Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;)V

    return-void
.end method

.method setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/a$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    return-void
.end method

.method setCharCount(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->r:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setCharCountTextStyle(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method setImageView(Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->y:Lf8/t;

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->y:Lf8/t;

    invoke-virtual {v0, p1}, Lf8/t;->i(Landroid/net/Uri;)Lf8/x;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lf8/x;->c(Landroid/widget/ImageView;)V

    :cond_15
    return-void
.end method

.method setProfilePhotoView(Lf9/p;)V
    .registers 3

    .line 1
    sget-object v0, Lc9/l$b;->t:Lc9/l$b;

    invoke-static {p1, v0}, Lc9/l;->a(Lf9/p;Lc9/l$b;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->y:Lf8/t;

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {v0, p1}, Lf8/t;->j(Ljava/lang/String;)Lf8/x;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->v:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lf8/x;->e(Landroid/graphics/drawable/Drawable;)Lf8/x;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lf8/x;->c(Landroid/widget/ImageView;)V

    :cond_19
    return-void
.end method

.method setTweetText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.ComposerView.a (com.twitter.sdk.android.tweetcomposer.ComposerView$a)
.class Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->x:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/a$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.b (com.twitter.sdk.android.tweetcomposer.b)
.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/b;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/b;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/view/View;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.c (com.twitter.sdk.android.tweetcomposer.c)
.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/c;->o:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->d(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/view/View;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.d (com.twitter.sdk.android.tweetcomposer.d)
.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/d;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/d;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->b(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class com.twitter.sdk.android.tweetcomposer.e (com.twitter.sdk.android.tweetcomposer.e)
.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/e;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/e;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;I)V

    return-void
.end method
