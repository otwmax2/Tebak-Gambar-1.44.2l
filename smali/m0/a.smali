###### Class m0.a (m0.a)
.class public final Lm0/a;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/a$a;,
        Lm0/a$b;
    }
.end annotation


# instance fields
.field private final a:Lm0/a$b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lm0/a;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lm0/a;->c:I

    const-string v0, "editText cannot be null"

    .line 4
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1e

    .line 6
    new-instance p1, Lm0/a$b;

    invoke-direct {p1}, Lm0/a$b;-><init>()V

    iput-object p1, p0, Lm0/a;->a:Lm0/a$b;

    goto :goto_25

    .line 7
    :cond_1e
    new-instance v0, Lm0/a$a;

    invoke-direct {v0, p1, p2}, Lm0/a$a;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Lm0/a;->a:Lm0/a$b;

    :goto_25
    return-void
.end method


# virtual methods
.method public a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/a;->a:Lm0/a$b;

    invoke-virtual {v0, p1}, Lm0/a$b;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lm0/a;->a:Lm0/a$b;

    invoke-virtual {v0, p1, p2}, Lm0/a$b;->b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/a;->a:Lm0/a$b;

    invoke-virtual {v0, p1}, Lm0/a$b;->c(Z)V

    return-void
.end method

###### Class m0.a.C0202a (m0.a$a)
.class Lm0/a$a;
.super Lm0/a$b;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Lm0/g;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lm0/a$b;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/a$a;->a:Landroid/widget/EditText;

    .line 3
    new-instance v0, Lm0/g;

    invoke-direct {v0, p1, p2}, Lm0/g;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Lm0/a$a;->b:Lm0/g;

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    invoke-static {}, Lm0/b;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method


# virtual methods
.method a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    .line 1
    instance-of v0, p1, Lm0/e;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    if-nez p1, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_9
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_e

    return-object p1

    .line 3
    :cond_e
    new-instance v0, Lm0/e;

    invoke-direct {v0, p1}, Lm0/e;-><init>(Landroid/text/method/KeyListener;)V

    return-object v0
.end method

.method b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    .line 1
    instance-of v0, p1, Lm0/c;

    if-eqz v0, :cond_5

    return-object p1

    .line 2
    :cond_5
    new-instance v0, Lm0/c;

    iget-object v1, p0, Lm0/a$a;->a:Landroid/widget/EditText;

    invoke-direct {v0, v1, p1, p2}, Lm0/c;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method c(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/a$a;->b:Lm0/g;

    invoke-virtual {v0, p1}, Lm0/g;->c(Z)V

    return-void
.end method

###### Class m0.a.b (m0.a$b)
.class Lm0/a$b;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 2

    return-object p1
.end method

.method b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    return-object p1
.end method

.method c(Z)V
    .registers 2

    return-void
.end method
