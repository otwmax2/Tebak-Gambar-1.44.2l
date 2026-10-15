###### Class androidx.databinding.ViewDataBinding (androidx.databinding.ViewDataBinding)
.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$i;,
        Landroidx/databinding/ViewDataBinding$j;,
        Landroidx/databinding/ViewDataBinding$l;,
        Landroidx/databinding/ViewDataBinding$k;,
        Landroidx/databinding/ViewDataBinding$m;
    }
.end annotation


# static fields
.field static E:I = 0x0

.field private static final F:I = 0x8

.field private static final G:Z

.field private static final H:Landroidx/databinding/d;

.field private static final I:Landroidx/databinding/d;

.field private static final J:Landroidx/databinding/d;

.field private static final K:Landroidx/databinding/d;

.field private static final L:Landroidx/databinding/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c$a<",
            "Landroidx/databinding/r;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final M:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final N:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private A:Landroidx/databinding/ViewDataBinding;

.field private B:Landroidx/lifecycle/n;

.field private C:Z

.field protected D:Z

.field private final p:Ljava/lang/Runnable;

.field private q:Z

.field private r:Z

.field private s:[Landroidx/databinding/t;

.field private final t:Landroid/view/View;

.field private u:Landroidx/databinding/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c<",
            "Landroidx/databinding/r;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Landroid/view/Choreographer;

.field private final x:Landroid/view/Choreographer$FrameCallback;

.field private y:Landroid/os/Handler;

.field protected final z:Landroidx/databinding/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->E:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 2
    :goto_b
    sput-boolean v1, Landroidx/databinding/ViewDataBinding;->G:Z

    .line 3
    new-instance v1, Landroidx/databinding/ViewDataBinding$a;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$a;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->H:Landroidx/databinding/d;

    .line 4
    new-instance v1, Landroidx/databinding/ViewDataBinding$b;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$b;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->I:Landroidx/databinding/d;

    .line 5
    new-instance v1, Landroidx/databinding/ViewDataBinding$c;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$c;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->J:Landroidx/databinding/d;

    .line 6
    new-instance v1, Landroidx/databinding/ViewDataBinding$d;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$d;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->K:Landroidx/databinding/d;

    .line 7
    new-instance v1, Landroidx/databinding/ViewDataBinding$e;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$e;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->L:Landroidx/databinding/c$a;

    .line 8
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->M:Ljava/lang/ref/ReferenceQueue;

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3f

    const/4 v0, 0x0

    .line 9
    sput-object v0, Landroidx/databinding/ViewDataBinding;->N:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_46

    .line 10
    :cond_3f
    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$f;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->N:Landroid/view/View$OnAttachStateChangeListener;

    :goto_46
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/f;Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$g;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$g;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->p:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    .line 5
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->z:Landroidx/databinding/f;

    .line 6
    new-array p1, p3, [Landroidx/databinding/t;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->s:[Landroidx/databinding/t;

    .line 7
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/View;

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 9
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->G:Z

    if-eqz p1, :cond_2f

    .line 10
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->w:Landroid/view/Choreographer;

    .line 11
    new-instance p1, Landroidx/databinding/ViewDataBinding$h;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$h;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->x:Landroid/view/Choreographer$FrameCallback;

    goto :goto_3d

    :cond_2f
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->x:Landroid/view/Choreographer$FrameCallback;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->y:Landroid/os/Handler;

    :goto_3d
    return-void

    .line 14
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 15
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Object;)Landroidx/databinding/f;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/f;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic A(Landroidx/databinding/ViewDataBinding;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    return p1
.end method

.method static synthetic B()V
    .registers 0

    .line 1
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->h0()V

    return-void
.end method

.method static synthetic C(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic D()Landroid/view/View$OnAttachStateChangeListener;
    .registers 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->N:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private static E(Ljava/lang/Object;)Landroidx/databinding/f;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    instance-of v0, p0, Landroidx/databinding/f;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Landroidx/databinding/f;

    return-object p0

    .line 3
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private G()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->v:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    return-void

    .line 3
    :cond_8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->W()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->v:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    .line 6
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->u:Landroidx/databinding/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 7
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    if-eqz v0, :cond_27

    .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->u:Landroidx/databinding/c;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    :cond_27
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    if-nez v0, :cond_36

    .line 11
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->F()V

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->u:Landroidx/databinding/c;

    if-eqz v0, :cond_36

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_36
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->v:Z

    return-void
.end method

.method protected static H(Landroidx/databinding/ViewDataBinding;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->G()V

    return-void
.end method

.method private static L(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$i;I)I
    .registers 6

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$i;->a:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 4
    array-length p3, p2

    :goto_17
    if-ge p1, p3, :cond_25

    .line 5
    aget-object v0, p2, p1

    .line 6
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    return p1

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method private static N(Landroid/view/ViewGroup;I)I
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_1f
    if-ge v4, v3, :cond_60

    .line 6
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 8
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    if-eqz v5, :cond_5d

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_56

    return p1

    .line 11
    :cond_56
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->b0(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    move p1, v4

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_60
    return p1
.end method

.method static Q(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .registers 2

    if-eqz p0, :cond_b

    .line 1
    sget v0, Le0/a;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static X(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->E(Ljava/lang/Object;)Landroidx/databinding/f;

    move-result-object p4

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/databinding/g;->i(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/f;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static b0(Ljava/lang/String;I)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    :goto_8
    if-ge p1, v0, :cond_18

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private static c0(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;Z)V
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_f

    return-void

    .line 2
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    check-cast v1, Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_4b

    if-eqz v1, :cond_4b

    .line 4
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/16 v3, 0x5f

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_47

    add-int/2addr v3, v11

    .line 6
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->b0(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 7
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->g0(Ljava/lang/String;I)I

    move-result v1

    .line 8
    aget-object v3, p2, v1

    if-nez v3, :cond_42

    .line 9
    aput-object v0, p2, v1

    :cond_42
    if-nez v7, :cond_45

    const/4 v1, -0x1

    :cond_45
    const/4 v3, 0x1

    goto :goto_49

    :cond_47
    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_49
    move v12, v1

    goto :goto_69

    :cond_4b
    if-eqz v1, :cond_67

    const-string v3, "binding_"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 11
    sget v3, Landroidx/databinding/ViewDataBinding;->F:I

    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->g0(Ljava/lang/String;I)I

    move-result v1

    .line 12
    aget-object v3, p2, v1

    if-nez v3, :cond_61

    .line 13
    aput-object v0, p2, v1

    :cond_61
    if-nez v7, :cond_64

    const/4 v1, -0x1

    :cond_64
    move v12, v1

    const/4 v3, 0x1

    goto :goto_69

    :cond_67
    const/4 v3, 0x0

    const/4 v12, -0x1

    :goto_69
    if-nez v3, :cond_7f

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_7f

    if-eqz v8, :cond_7f

    .line 15
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_7f

    aget-object v2, p2, v1

    if-nez v2, :cond_7f

    .line 16
    aput-object v0, p2, v1

    .line 17
    :cond_7f
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_113

    .line 18
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8c
    if-ge v0, v14, :cond_113

    .line 20
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_f9

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_f9

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 24
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_f9

    .line 25
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->L(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$i;I)I

    move-result v3

    if-ltz v3, :cond_f9

    add-int/lit8 v1, v3, 0x1

    .line 26
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$i;->b:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 27
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$i;->c:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 28
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->N(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_dc

    .line 29
    invoke-static {v6, v2, v3}, Landroidx/databinding/g;->c(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    :goto_d8
    move v10, v0

    move v11, v1

    const/4 v0, 0x1

    goto :goto_fc

    :cond_dc
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 30
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_e1
    if-ge v10, v5, :cond_ef

    add-int v11, v0, v10

    .line 31
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_e1

    .line 32
    :cond_ef
    invoke-static {v6, v15, v3}, Landroidx/databinding/g;->d(Landroidx/databinding/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    goto :goto_d8

    :cond_f9
    move v10, v0

    move v11, v1

    const/4 v0, 0x0

    :goto_fc
    if-nez v0, :cond_10b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->c0(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;Z)V

    :cond_10b
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v0, v1

    move v1, v11

    const/4 v11, 0x1

    goto/16 :goto_8c

    :cond_113
    return-void
.end method

.method protected static d0(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .registers 11

    .line 1
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->c0(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$i;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method private static g0(Ljava/lang/String;I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_13

    mul-int/lit8 v1, v1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_13
    return v1
.end method

.method private static h0()V
    .registers 2

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->M:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    instance-of v1, v0, Landroidx/databinding/t;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/databinding/t;

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/t;->e()Z

    goto :goto_0

    :cond_12
    return-void
.end method

.method protected static l0(Ljava/lang/Boolean;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_8
    return p0
.end method

.method static synthetic y(Landroidx/databinding/ViewDataBinding;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    return p1
.end method

.method static synthetic z(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->p:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected abstract F()V
.end method

.method public K()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->A:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->G()V

    goto :goto_b

    .line 3
    :cond_8
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->K()V

    :goto_b
    return-void
.end method

.method public S()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/View;

    return-object v0
.end method

.method protected V(ILjava/lang/Object;I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->C:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->D:Z

    if-eqz v0, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->e0(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k0()V

    :cond_12
    :goto_12
    return-void
.end method

.method public abstract W()Z
.end method

.method public abstract Z()V
.end method

.method protected abstract e0(ILjava/lang/Object;I)Z
.end method

.method protected j0(ILjava/lang/Object;Landroidx/databinding/d;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->s:[Landroidx/databinding/t;

    aget-object v0, v0, p1

    if-nez v0, :cond_1a

    .line 2
    sget-object v0, Landroidx/databinding/ViewDataBinding;->M:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p3, p0, p1, v0}, Landroidx/databinding/d;->a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/t;

    move-result-object v0

    .line 3
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->s:[Landroidx/databinding/t;

    aput-object v0, p3, p1

    .line 4
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/lifecycle/n;

    if-eqz p1, :cond_1a

    .line 5
    invoke-virtual {v0, p1}, Landroidx/databinding/t;->c(Landroidx/lifecycle/n;)V

    .line 6
    :cond_1a
    invoke-virtual {v0, p2}, Landroidx/databinding/t;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected k0()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->A:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->k0()V

    goto :goto_3b

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/lifecycle/n;

    if-eqz v0, :cond_1d

    .line 4
    invoke-interface {v0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j$c;->c(Landroidx/lifecycle/j$c;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 6
    :cond_1d
    monitor-enter p0

    .line 7
    :try_start_1e
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    if-eqz v0, :cond_24

    .line 8
    monitor-exit p0

    return-void

    :cond_24
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    .line 10
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_3c

    .line 11
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->G:Z

    if-eqz v0, :cond_34

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->w:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->x:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_3b

    .line 13
    :cond_34
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3b
    return-void

    :catchall_3c
    move-exception v0

    .line 14
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method protected o0(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->A:Landroidx/databinding/ViewDataBinding;

    :cond_4
    return-void
.end method

.method protected p0(Landroid/view/View;)V
    .registers 3

    .line 1
    sget v0, Le0/a;->a:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected q0(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->s:[Landroidx/databinding/t;

    aget-object p1, v0, p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Landroidx/databinding/t;->e()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method protected r0(ILandroidx/databinding/j;)Z
    .registers 4

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->H:Landroidx/databinding/d;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->s0(ILjava/lang/Object;Landroidx/databinding/d;)Z

    move-result p1

    return p1
.end method

.method protected s0(ILjava/lang/Object;Landroidx/databinding/d;)Z
    .registers 6

    if-nez p2, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->q0(I)Z

    move-result p1

    return p1

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->s:[Landroidx/databinding/t;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->j0(ILjava/lang/Object;Landroidx/databinding/d;)V

    return v1

    .line 4
    :cond_12
    invoke-virtual {v0}, Landroidx/databinding/t;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1a

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->q0(I)Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->j0(ILjava/lang/Object;Landroidx/databinding/d;)V

    return v1
.end method

###### Class androidx.databinding.ViewDataBinding.OnStartListener (androidx.databinding.ViewDataBinding$OnStartListener)
.class Landroidx/databinding/ViewDataBinding$OnStartListener;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/lifecycle/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnStartListener"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onStart()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/v;
        value = .enum Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$OnStartListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->K()V

    :cond_d
    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.a (androidx.databinding.ViewDataBinding$a)
.class Landroidx/databinding/ViewDataBinding$a;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Landroidx/databinding/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$m;

    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$m;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$m;->f()Landroidx/databinding/t;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.databinding.ViewDataBinding.b (androidx.databinding.ViewDataBinding$b)
.class Landroidx/databinding/ViewDataBinding$b;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Landroidx/databinding/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$k;

    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$k;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$k;->j()Landroidx/databinding/t;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.databinding.ViewDataBinding.c (androidx.databinding.ViewDataBinding$c)
.class Landroidx/databinding/ViewDataBinding$c;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Landroidx/databinding/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$l;

    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$l;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$l;->e()Landroidx/databinding/t;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.databinding.ViewDataBinding.d (androidx.databinding.ViewDataBinding$d)
.class Landroidx/databinding/ViewDataBinding$d;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)",
            "Landroidx/databinding/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$j;

    invoke-direct {v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$j;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$j;->g()Landroidx/databinding/t;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.databinding.ViewDataBinding.e (androidx.databinding.ViewDataBinding$e)
.class Landroidx/databinding/ViewDataBinding$e;
.super Landroidx/databinding/c$a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c$a<",
        "Landroidx/databinding/r;",
        "Landroidx/databinding/ViewDataBinding;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/databinding/r;

    check-cast p2, Landroidx/databinding/ViewDataBinding;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ViewDataBinding$e;->b(Landroidx/databinding/r;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V

    return-void
.end method

.method public b(Landroidx/databinding/r;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .registers 5

    const/4 p4, 0x1

    if-eq p3, p4, :cond_12

    const/4 p4, 0x2

    if-eq p3, p4, :cond_e

    const/4 p4, 0x3

    if-eq p3, p4, :cond_a

    goto :goto_1b

    .line 1
    :cond_a
    invoke-virtual {p1, p2}, Landroidx/databinding/r;->a(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_1b

    .line 2
    :cond_e
    invoke-virtual {p1, p2}, Landroidx/databinding/r;->b(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_1b

    .line 3
    :cond_12
    invoke-virtual {p1, p2}, Landroidx/databinding/r;->c(Landroidx/databinding/ViewDataBinding;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 4
    invoke-static {p2, p4}, Landroidx/databinding/ViewDataBinding;->y(Landroidx/databinding/ViewDataBinding;Z)Z

    :cond_1b
    :goto_1b
    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.f (androidx.databinding.ViewDataBinding$f)
.class Landroidx/databinding/ViewDataBinding$f;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->Q(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->z(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.g (androidx.databinding.ViewDataBinding$g)
.class Landroidx/databinding/ViewDataBinding$g;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/databinding/ViewDataBinding;Z)Z

    .line 3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3e

    .line 4
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->B()V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    .line 6
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->C(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_38

    .line 7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->C(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->D()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->C(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->D()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 9
    :cond_38
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->o:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->K()V

    return-void

    :catchall_3e
    move-exception v0

    .line 10
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

###### Class androidx.databinding.ViewDataBinding.h (androidx.databinding.ViewDataBinding$h)
.class Landroidx/databinding/ViewDataBinding$h;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/f;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$h;->o:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$h;->o:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->z(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.i (androidx.databinding.ViewDataBinding$i)
.class public Landroidx/databinding/ViewDataBinding$i;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "i"
.end annotation


# instance fields
.field public final a:[[Ljava/lang/String;

.field public final b:[[I

.field public final c:[[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [[Ljava/lang/String;

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$i;->a:[[Ljava/lang/String;

    .line 3
    new-array v0, p1, [[I

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$i;->b:[[I

    .line 4
    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$i;->c:[[I

    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I[I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$i;->a:[[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2
    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$i;->b:[[I

    aput-object p3, p2, p1

    .line 3
    iget-object p2, p0, Landroidx/databinding/ViewDataBinding$i;->c:[[I

    aput-object p4, p2, p1

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.j (androidx.databinding.ViewDataBinding$j)
.class Landroidx/databinding/ViewDataBinding$j;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/lifecycle/u;
.implements Landroidx/databinding/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u;",
        "Landroidx/databinding/q<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/t<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->b:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Landroidx/databinding/t;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/t;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/q;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/t;

    return-void
.end method

.method private f()Landroidx/lifecycle/n;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/n;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/n;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$j;->f()Landroidx/lifecycle/n;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/t;

    invoke-virtual {v1}, Landroidx/databinding/t;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/u;)V

    :cond_13
    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    :cond_18
    if-eqz p1, :cond_21

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->b:Ljava/lang/ref/WeakReference;

    :cond_21
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$j;->h(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$j;->e(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/t;

    invoke-virtual {p1}, Landroidx/databinding/t;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/t;

    iget v1, v0, Landroidx/databinding/t;->b:I

    invoke-virtual {v0}, Landroidx/databinding/t;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->V(ILjava/lang/Object;I)V

    :cond_14
    return-void
.end method

.method public e(Landroidx/lifecycle/LiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding$j;->f()Landroidx/lifecycle/n;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    :cond_9
    return-void
.end method

.method public g()Landroidx/databinding/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/t<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$j;->a:Landroidx/databinding/t;

    return-object v0
.end method

.method public h(Landroidx/lifecycle/LiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/u;)V

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.k (androidx.databinding.ViewDataBinding$k)
.class Landroidx/databinding/ViewDataBinding$k;
.super Landroidx/databinding/o$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/o$a;",
        "Landroidx/databinding/q<",
        "Landroidx/databinding/o;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/t<",
            "Landroidx/databinding/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/o$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/t;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/t;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/q;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/t;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/n;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/o;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->k(Landroidx/databinding/o;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/o;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->i(Landroidx/databinding/o;)V

    return-void
.end method

.method public d(Landroidx/databinding/o;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/t;

    invoke-virtual {v0}, Landroidx/databinding/t;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/t;

    invoke-virtual {v1}, Landroidx/databinding/t;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/o;

    if-eq v1, p1, :cond_14

    return-void

    .line 3
    :cond_14
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/t;

    iget p1, p1, Landroidx/databinding/t;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->V(ILjava/lang/Object;I)V

    return-void
.end method

.method public e(Landroidx/databinding/o;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->d(Landroidx/databinding/o;)V

    return-void
.end method

.method public f(Landroidx/databinding/o;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->d(Landroidx/databinding/o;)V

    return-void
.end method

.method public g(Landroidx/databinding/o;III)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->d(Landroidx/databinding/o;)V

    return-void
.end method

.method public h(Landroidx/databinding/o;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->d(Landroidx/databinding/o;)V

    return-void
.end method

.method public i(Landroidx/databinding/o;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/o;->K2(Landroidx/databinding/o$a;)V

    return-void
.end method

.method public j()Landroidx/databinding/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/t<",
            "Landroidx/databinding/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/t;

    return-object v0
.end method

.method public k(Landroidx/databinding/o;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/o;->e0(Landroidx/databinding/o$a;)V

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.l (androidx.databinding.ViewDataBinding$l)
.class Landroidx/databinding/ViewDataBinding$l;
.super Landroidx/databinding/p$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/p$a;",
        "Landroidx/databinding/q<",
        "Landroidx/databinding/p;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/t<",
            "Landroidx/databinding/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/p$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/t;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/t;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/q;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$l;->a:Landroidx/databinding/t;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/n;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/p;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$l;->f(Landroidx/databinding/p;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/p;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$l;->d(Landroidx/databinding/p;)V

    return-void
.end method

.method public d(Landroidx/databinding/p;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/p;->g(Landroidx/databinding/p$a;)V

    return-void
.end method

.method public e()Landroidx/databinding/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/t<",
            "Landroidx/databinding/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$l;->a:Landroidx/databinding/t;

    return-object v0
.end method

.method public f(Landroidx/databinding/p;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/p;->i(Landroidx/databinding/p$a;)V

    return-void
.end method

###### Class androidx.databinding.ViewDataBinding.m (androidx.databinding.ViewDataBinding$m)
.class Landroidx/databinding/ViewDataBinding$m;
.super Landroidx/databinding/j$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/j$a;",
        "Landroidx/databinding/q<",
        "Landroidx/databinding/j;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/t<",
            "Landroidx/databinding/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/t;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/t;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/q;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$m;->a:Landroidx/databinding/t;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/n;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$m;->g(Landroidx/databinding/j;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroidx/databinding/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$m;->e(Landroidx/databinding/j;)V

    return-void
.end method

.method public d(Landroidx/databinding/j;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$m;->a:Landroidx/databinding/t;

    invoke-virtual {v0}, Landroidx/databinding/t;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$m;->a:Landroidx/databinding/t;

    invoke-virtual {v1}, Landroidx/databinding/t;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/j;

    if-eq v1, p1, :cond_14

    return-void

    .line 3
    :cond_14
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$m;->a:Landroidx/databinding/t;

    iget v1, v1, Landroidx/databinding/t;->b:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/databinding/ViewDataBinding;->V(ILjava/lang/Object;I)V

    return-void
.end method

.method public e(Landroidx/databinding/j;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/j;->h(Landroidx/databinding/j$a;)V

    return-void
.end method

.method public f()Landroidx/databinding/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/t<",
            "Landroidx/databinding/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$m;->a:Landroidx/databinding/t;

    return-object v0
.end method

.method public g(Landroidx/databinding/j;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/j;->v(Landroidx/databinding/j$a;)V

    return-void
.end method
