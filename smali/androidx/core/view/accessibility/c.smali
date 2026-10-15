###### Class androidx.core.view.accessibility.c (androidx.core.view.accessibility.c)
.class public Landroidx/core/view/accessibility/c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/c$c;,
        Landroidx/core/view/accessibility/c$b;,
        Landroidx/core/view/accessibility/c$a;
    }
.end annotation


# static fields
.field private static d:I


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/core/view/accessibility/c;->b:I

    .line 3
    iput v0, p0, Landroidx/core/view/accessibility/c;->c:I

    .line 4
    iput-object p1, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method public static L()Landroidx/core/view/accessibility/c;
    .registers 1

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/c;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;

    move-result-object v0

    return-object v0
.end method

.method public static M(Landroid/view/View;)Landroidx/core/view/accessibility/c;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/accessibility/c;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;

    move-result-object p0

    return-object p0
.end method

.method public static N(Landroidx/core/view/accessibility/c;)Landroidx/core/view/accessibility/c;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/accessibility/c;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;

    move-result-object p0

    return-object p0
.end method

.method private Q(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c;->u(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 4
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_26

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3f
    return-void
.end method

.method private S(IZ)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->r()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    or-int/2addr p1, v3

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    return-void
.end method

.method private d(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V
    .registers 6

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 1
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 2
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 3
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 4
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_32

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_26

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_26
    return-object v0
.end method

.method private static i(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8a

    sparse-switch p0, :sswitch_data_90

    packed-switch p0, :pswitch_data_e2

    packed-switch p0, :pswitch_data_f6

    packed-switch p0, :pswitch_data_108

    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :pswitch_15
    const-string p0, "ACTION_DRAG_CANCEL"

    return-object p0

    :pswitch_18
    const-string p0, "ACTION_DRAG_DROP"

    return-object p0

    :pswitch_1b
    const-string p0, "ACTION_DRAG_START"

    return-object p0

    :pswitch_1e
    const-string p0, "ACTION_IME_ENTER"

    return-object p0

    :pswitch_21
    const-string p0, "ACTION_PRESS_AND_HOLD"

    return-object p0

    :pswitch_24
    const-string p0, "ACTION_PAGE_RIGHT"

    return-object p0

    :pswitch_27
    const-string p0, "ACTION_PAGE_LEFT"

    return-object p0

    :pswitch_2a
    const-string p0, "ACTION_PAGE_DOWN"

    return-object p0

    :pswitch_2d
    const-string p0, "ACTION_PAGE_UP"

    return-object p0

    :pswitch_30
    const-string p0, "ACTION_HIDE_TOOLTIP"

    return-object p0

    :pswitch_33
    const-string p0, "ACTION_SHOW_TOOLTIP"

    return-object p0

    :pswitch_36
    const-string p0, "ACTION_SET_PROGRESS"

    return-object p0

    :pswitch_39
    const-string p0, "ACTION_CONTEXT_CLICK"

    return-object p0

    :pswitch_3c
    const-string p0, "ACTION_SCROLL_RIGHT"

    return-object p0

    :pswitch_3f
    const-string p0, "ACTION_SCROLL_DOWN"

    return-object p0

    :pswitch_42
    const-string p0, "ACTION_SCROLL_LEFT"

    return-object p0

    :pswitch_45
    const-string p0, "ACTION_SCROLL_UP"

    return-object p0

    :pswitch_48
    const-string p0, "ACTION_SCROLL_TO_POSITION"

    return-object p0

    :pswitch_4b
    const-string p0, "ACTION_SHOW_ON_SCREEN"

    return-object p0

    :sswitch_4e
    const-string p0, "ACTION_MOVE_WINDOW"

    return-object p0

    :sswitch_51
    const-string p0, "ACTION_SET_TEXT"

    return-object p0

    :sswitch_54
    const-string p0, "ACTION_COLLAPSE"

    return-object p0

    :sswitch_57
    const-string p0, "ACTION_EXPAND"

    return-object p0

    :sswitch_5a
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_5d
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_60
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_63
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_66
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_69
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_6c
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_6f
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_72
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_75
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_78
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7b
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_7e
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_81
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_84
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_87
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_8a
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_8d
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_90
    .sparse-switch
        0x4 -> :sswitch_87
        0x8 -> :sswitch_84
        0x10 -> :sswitch_81
        0x20 -> :sswitch_7e
        0x40 -> :sswitch_7b
        0x80 -> :sswitch_78
        0x100 -> :sswitch_75
        0x200 -> :sswitch_72
        0x400 -> :sswitch_6f
        0x800 -> :sswitch_6c
        0x1000 -> :sswitch_69
        0x2000 -> :sswitch_66
        0x4000 -> :sswitch_63
        0x8000 -> :sswitch_60
        0x10000 -> :sswitch_5d
        0x20000 -> :sswitch_5a
        0x40000 -> :sswitch_57
        0x80000 -> :sswitch_54
        0x200000 -> :sswitch_51
        0x1020042 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x1020036
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1020044
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x1020054
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private k(I)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->r()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static p(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;
    .registers 4

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_15

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private s(Landroid/view/View;)Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c;->u(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3
    sget v1, Lw/c;->I:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method private u(Landroid/view/View;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget v0, Lw/c;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    return-object p1
.end method

.method public static x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;
    .registers 2

    .line 1
    new-instance v0, Landroidx/core/view/accessibility/c;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private y()Z
    .registers 2

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 1
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private z(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/ClickableSpan;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/text/style/ClickableSpan;",
            ">;>;)I"
        }
    .end annotation

    if-eqz p2, :cond_23

    const/4 v0, 0x0

    .line 1
    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/ClickableSpan;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5
    :cond_23
    sget p1, Landroidx/core/view/accessibility/c;->d:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroidx/core/view/accessibility/c;->d:I

    return p1
.end method


# virtual methods
.method public A()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->k(I)Z

    move-result v0

    return v0
.end method

.method public O(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public P()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method public R(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_b
    return-void
.end method

.method public T(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public U(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public V(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public W(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public X(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Y(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public Z(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    .line 3
    :cond_c
    check-cast p1, Landroidx/core/view/accessibility/c$b;

    iget-object p1, p1, Landroidx/core/view/accessibility/c$b;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4
    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_15
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public a0(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    .line 3
    :cond_c
    check-cast p1, Landroidx/core/view/accessibility/c$c;

    iget-object p1, p1, Landroidx/core/view/accessibility/c$c;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4
    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_15
    return-void
.end method

.method public b(Landroidx/core/view/accessibility/c$a;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_f
    return-void
.end method

.method public b0(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method public c0(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_b
    return-void
.end method

.method public d0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;Landroid/view/View;)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_47

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_47

    .line 2
    invoke-direct {p0}, Landroidx/core/view/accessibility/c;->f()V

    .line 3
    invoke-direct {p0, p2}, Landroidx/core/view/accessibility/c;->Q(Landroid/view/View;)V

    .line 4
    invoke-static {p1}, Landroidx/core/view/accessibility/c;->p(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 5
    array-length v1, v0

    if-lez v1, :cond_47

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->r()Landroid/os/Bundle;

    move-result-object v1

    sget v2, Lw/c;->a:I

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0, p2}, Landroidx/core/view/accessibility/c;->s(Landroid/view/View;)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 8
    :goto_29
    array-length v2, v0

    if-ge v1, v2, :cond_47

    .line 9
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Landroidx/core/view/accessibility/c;->z(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/ref/WeakReference;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    aget-object v3, v0, v1

    move-object v4, p1

    check-cast v4, Landroid/text/Spanned;

    invoke-direct {p0, v3, v4, v2}, Landroidx/core/view/accessibility/c;->d(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_47
    return-void
.end method

.method public e0(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Landroidx/core/view/accessibility/c;

    if-nez v2, :cond_d

    return v1

    .line 2
    :cond_d
    check-cast p1, Landroidx/core/view/accessibility/c;

    .line 3
    iget-object v2, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_18

    .line 4
    iget-object v2, p1, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_21

    return v1

    .line 5
    :cond_18
    iget-object v3, p1, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    .line 6
    :cond_21
    iget v2, p0, Landroidx/core/view/accessibility/c;->c:I

    iget v3, p1, Landroidx/core/view/accessibility/c;->c:I

    if-eq v2, v3, :cond_28

    return v1

    .line 7
    :cond_28
    iget v2, p0, Landroidx/core/view/accessibility/c;->b:I

    iget p1, p1, Landroidx/core/view/accessibility/c;->b:I

    if-eq v2, p1, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public f0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    return-void
.end method

.method public g0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    return-void
.end method

.method public h()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_2c

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_2b

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    new-instance v5, Landroidx/core/view/accessibility/c$a;

    invoke-direct {v5, v4}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2b
    return-object v1

    .line 7
    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h0(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/core/view/accessibility/c;->S(IZ)V

    :goto_10
    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public i0(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_c
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public j()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public j0(I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_b
    return-void
.end method

.method public k0(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public l0(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_c
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public m(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public m0(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/core/view/accessibility/c;->b:I

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public n()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public n0(Landroid/view/View;I)V
    .registers 5

    .line 1
    iput p2, p0, Landroidx/core/view/accessibility/c;->b:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_d
    return-void
.end method

.method public o()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public o0(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/core/view/accessibility/c;->S(IZ)V

    :goto_10
    return-void
.end method

.method public p0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public q()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q0(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/core/view/accessibility/c;->S(IZ)V

    :goto_10
    return-void
.end method

.method public r()Landroid/os/Bundle;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public r0(Landroid/view/View;I)V
    .registers 5

    .line 1
    iput p2, p0, Landroidx/core/view/accessibility/c;->c:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    :cond_d
    return-void
.end method

.method public s0(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-static {}, Landroidx/core/os/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 3
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1d

    .line 4
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public t()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public t0(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/c;->m(Landroid/graphics/Rect;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->o()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->v()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewId: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uniqueId: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->J()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->I()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ["

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, ", "

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v1, v4, :cond_158

    .line 26
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->h()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    .line 27
    :goto_11e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_174

    .line 28
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/view/accessibility/c$a;

    .line 29
    invoke-virtual {v5}, Landroidx/core/view/accessibility/c$a;->b()I

    move-result v6

    invoke-static {v6}, Landroidx/core/view/accessibility/c;->i(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACTION_UNKNOWN"

    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_148

    invoke-virtual {v5}, Landroidx/core/view/accessibility/c$a;->c()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_148

    .line 31
    invoke-virtual {v5}, Landroidx/core/view/accessibility/c$a;->c()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 32
    :cond_148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_155

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_155
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    .line 35
    :cond_158
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->j()I

    move-result v1

    :cond_15c
    :goto_15c
    if-eqz v1, :cond_174

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int v4, v3, v4

    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v1, v5

    .line 37
    invoke-static {v4}, Landroidx/core/view/accessibility/c;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_15c

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15c

    :cond_174
    const-string v1, "]"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(Landroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public v()Ljava/lang/CharSequence;
    .registers 11

    .line 1
    invoke-direct {p0}, Landroidx/core/view/accessibility/c;->y()Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 2
    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 3
    invoke-direct {p0, v1}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 4
    invoke-direct {p0, v2}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 5
    invoke-direct {p0, v3}, Landroidx/core/view/accessibility/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    .line 8
    invoke-static {v5, v7, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_7b

    .line 10
    new-instance v5, Landroidx/core/view/accessibility/a;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 11
    invoke-virtual {p0}, Landroidx/core/view/accessibility/c;->r()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, p0, v8}, Landroidx/core/view/accessibility/a;-><init>(ILandroidx/core/view/accessibility/c;I)V

    .line 12
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 13
    invoke-interface {v4, v5, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_7b
    return-object v4

    .line 14
    :cond_7c
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public v0(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_b
    return-void
.end method

.method public w()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_20

    .line 4
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public w0()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

###### Class androidx.core.view.accessibility.c.a (androidx.core.view.accessibility.c$a)
.class public Landroidx/core/view/accessibility/c$a;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final A:Landroidx/core/view/accessibility/c$a;

.field public static final B:Landroidx/core/view/accessibility/c$a;

.field public static final C:Landroidx/core/view/accessibility/c$a;

.field public static final D:Landroidx/core/view/accessibility/c$a;

.field public static final E:Landroidx/core/view/accessibility/c$a;

.field public static final F:Landroidx/core/view/accessibility/c$a;

.field public static final G:Landroidx/core/view/accessibility/c$a;

.field public static final H:Landroidx/core/view/accessibility/c$a;

.field public static final I:Landroidx/core/view/accessibility/c$a;

.field public static final J:Landroidx/core/view/accessibility/c$a;

.field public static final K:Landroidx/core/view/accessibility/c$a;

.field public static final L:Landroidx/core/view/accessibility/c$a;

.field public static final M:Landroidx/core/view/accessibility/c$a;

.field public static final N:Landroidx/core/view/accessibility/c$a;

.field public static final O:Landroidx/core/view/accessibility/c$a;

.field public static final P:Landroidx/core/view/accessibility/c$a;

.field public static final Q:Landroidx/core/view/accessibility/c$a;

.field public static final R:Landroidx/core/view/accessibility/c$a;

.field public static final S:Landroidx/core/view/accessibility/c$a;

.field public static final T:Landroidx/core/view/accessibility/c$a;

.field public static final e:Landroidx/core/view/accessibility/c$a;

.field public static final f:Landroidx/core/view/accessibility/c$a;

.field public static final g:Landroidx/core/view/accessibility/c$a;

.field public static final h:Landroidx/core/view/accessibility/c$a;

.field public static final i:Landroidx/core/view/accessibility/c$a;

.field public static final j:Landroidx/core/view/accessibility/c$a;

.field public static final k:Landroidx/core/view/accessibility/c$a;

.field public static final l:Landroidx/core/view/accessibility/c$a;

.field public static final m:Landroidx/core/view/accessibility/c$a;

.field public static final n:Landroidx/core/view/accessibility/c$a;

.field public static final o:Landroidx/core/view/accessibility/c$a;

.field public static final p:Landroidx/core/view/accessibility/c$a;

.field public static final q:Landroidx/core/view/accessibility/c$a;

.field public static final r:Landroidx/core/view/accessibility/c$a;

.field public static final s:Landroidx/core/view/accessibility/c$a;

.field public static final t:Landroidx/core/view/accessibility/c$a;

.field public static final u:Landroidx/core/view/accessibility/c$a;

.field public static final v:Landroidx/core/view/accessibility/c$a;

.field public static final w:Landroidx/core/view/accessibility/c$a;

.field public static final x:Landroidx/core/view/accessibility/c$a;

.field public static final y:Landroidx/core/view/accessibility/c$a;

.field public static final z:Landroidx/core/view/accessibility/c$a;


# instance fields
.field final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/view/accessibility/f$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Landroidx/core/view/accessibility/f;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 1
    const-class v0, Landroidx/core/view/accessibility/f$c;

    const-class v1, Landroidx/core/view/accessibility/f$b;

    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->e:Landroidx/core/view/accessibility/c$a;

    .line 2
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->f:Landroidx/core/view/accessibility/c$a;

    .line 3
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->g:Landroidx/core/view/accessibility/c$a;

    .line 4
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->h:Landroidx/core/view/accessibility/c$a;

    .line 5
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->i:Landroidx/core/view/accessibility/c$a;

    .line 6
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v3, 0x20

    invoke-direct {v2, v3, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->j:Landroidx/core/view/accessibility/c$a;

    .line 7
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v5, 0x40

    invoke-direct {v2, v5, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->k:Landroidx/core/view/accessibility/c$a;

    .line 8
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v5, 0x80

    invoke-direct {v2, v5, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->l:Landroidx/core/view/accessibility/c$a;

    .line 9
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v5, 0x100

    invoke-direct {v2, v5, v4, v1}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->m:Landroidx/core/view/accessibility/c$a;

    .line 10
    new-instance v2, Landroidx/core/view/accessibility/c$a;

    const/16 v5, 0x200

    invoke-direct {v2, v5, v4, v1}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v2, Landroidx/core/view/accessibility/c$a;->n:Landroidx/core/view/accessibility/c$a;

    .line 11
    new-instance v1, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x400

    invoke-direct {v1, v2, v4, v0}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v1, Landroidx/core/view/accessibility/c$a;->o:Landroidx/core/view/accessibility/c$a;

    .line 12
    new-instance v1, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x800

    invoke-direct {v1, v2, v4, v0}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v1, Landroidx/core/view/accessibility/c$a;->p:Landroidx/core/view/accessibility/c$a;

    .line 13
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v1, 0x1000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->q:Landroidx/core/view/accessibility/c$a;

    .line 14
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v1, 0x2000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->r:Landroidx/core/view/accessibility/c$a;

    .line 15
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v1, 0x4000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->s:Landroidx/core/view/accessibility/c$a;

    .line 16
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const v1, 0x8000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->t:Landroidx/core/view/accessibility/c$a;

    .line 17
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->u:Landroidx/core/view/accessibility/c$a;

    .line 18
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const-class v1, Landroidx/core/view/accessibility/f$g;

    const/high16 v2, 0x20000

    invoke-direct {v0, v2, v4, v1}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->v:Landroidx/core/view/accessibility/c$a;

    .line 19
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->w:Landroidx/core/view/accessibility/c$a;

    .line 20
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->x:Landroidx/core/view/accessibility/c$a;

    .line 21
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1, v4}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->y:Landroidx/core/view/accessibility/c$a;

    .line 22
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const-class v1, Landroidx/core/view/accessibility/f$h;

    const/high16 v2, 0x200000

    invoke-direct {v0, v2, v4, v1}, Landroidx/core/view/accessibility/c$a;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->z:Landroidx/core/view/accessibility/c$a;

    .line 23
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_d9

    .line 25
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v5

    goto :goto_da

    :cond_d9
    move-object v6, v4

    :goto_da
    const v7, 0x1020036

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->A:Landroidx/core/view/accessibility/c$a;

    .line 26
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_ee

    .line 27
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v5

    goto :goto_ef

    :cond_ee
    move-object v12, v4

    :goto_ef
    const v13, 0x1020037

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 28
    const-class v16, Landroidx/core/view/accessibility/f$e;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->B:Landroidx/core/view/accessibility/c$a;

    .line 29
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_104

    .line 30
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v5

    goto :goto_105

    :cond_104
    move-object v6, v4

    :goto_105
    const v7, 0x1020038

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->C:Landroidx/core/view/accessibility/c$a;

    .line 31
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_119

    .line 32
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v5

    goto :goto_11a

    :cond_119
    move-object v12, v4

    :goto_11a
    const v13, 0x1020039

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->D:Landroidx/core/view/accessibility/c$a;

    .line 33
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_12f

    .line 34
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v5

    goto :goto_130

    :cond_12f
    move-object v6, v4

    :goto_130
    const v7, 0x102003a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->E:Landroidx/core/view/accessibility/c$a;

    .line 35
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_144

    .line 36
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v5

    goto :goto_145

    :cond_144
    move-object v12, v4

    :goto_145
    const v13, 0x102003b

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->F:Landroidx/core/view/accessibility/c$a;

    .line 37
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v11, 0x1d

    if-lt v1, v11, :cond_15c

    .line 38
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v5

    goto :goto_15d

    :cond_15c
    move-object v6, v4

    :goto_15d
    const v7, 0x1020046

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->G:Landroidx/core/view/accessibility/c$a;

    .line 39
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v11, :cond_171

    .line 40
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v13, v5

    goto :goto_172

    :cond_171
    move-object v13, v4

    :goto_172
    const v14, 0x1020047

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->H:Landroidx/core/view/accessibility/c$a;

    .line 41
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v11, :cond_188

    .line 42
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v5

    goto :goto_189

    :cond_188
    move-object v6, v4

    :goto_189
    const v7, 0x1020048

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->I:Landroidx/core/view/accessibility/c$a;

    .line 43
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v11, :cond_19d

    .line 44
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v13, v5

    goto :goto_19e

    :cond_19d
    move-object v13, v4

    :goto_19e
    const v14, 0x1020049

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->J:Landroidx/core/view/accessibility/c$a;

    .line 45
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_1b4

    .line 46
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v2

    goto :goto_1b5

    :cond_1b4
    move-object v6, v4

    :goto_1b5
    const v7, 0x102003c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->K:Landroidx/core/view/accessibility/c$a;

    .line 47
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1cb

    .line 48
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v2

    goto :goto_1cc

    :cond_1cb
    move-object v12, v4

    :goto_1cc
    const v13, 0x102003d

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-class v16, Landroidx/core/view/accessibility/f$f;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->L:Landroidx/core/view/accessibility/c$a;

    .line 49
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1e3

    .line 50
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v2

    goto :goto_1e4

    :cond_1e3
    move-object v6, v4

    :goto_1e4
    const v7, 0x1020042

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-class v10, Landroidx/core/view/accessibility/f$d;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->M:Landroidx/core/view/accessibility/c$a;

    .line 51
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1fb

    .line 52
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v5

    goto :goto_1fc

    :cond_1fb
    move-object v12, v4

    :goto_1fc
    const v13, 0x1020044

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->N:Landroidx/core/view/accessibility/c$a;

    .line 53
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_211

    .line 54
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v2

    goto :goto_212

    :cond_211
    move-object v6, v4

    :goto_212
    const v7, 0x1020045

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->O:Landroidx/core/view/accessibility/c$a;

    .line 55
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_228

    .line 56
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PRESS_AND_HOLD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v5

    goto :goto_229

    :cond_228
    move-object v12, v4

    :goto_229
    const v13, 0x102004a

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->P:Landroidx/core/view/accessibility/c$a;

    .line 57
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v2, :cond_23e

    .line 58
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_IME_ENTER:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v2

    goto :goto_23f

    :cond_23e
    move-object v6, v4

    :goto_23f
    const v7, 0x1020054

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->Q:Landroidx/core/view/accessibility/c$a;

    .line 59
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v3, :cond_253

    .line 60
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_START:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v2

    goto :goto_254

    :cond_253
    move-object v12, v4

    :goto_254
    const v13, 0x1020055

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->R:Landroidx/core/view/accessibility/c$a;

    .line 61
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v3, :cond_269

    .line 62
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_DROP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v2

    goto :goto_26a

    :cond_269
    move-object v6, v4

    :goto_26a
    const v7, 0x1020056

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->S:Landroidx/core/view/accessibility/c$a;

    .line 63
    new-instance v0, Landroidx/core/view/accessibility/c$a;

    if-lt v1, v3, :cond_27c

    .line 64
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_CANCEL:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :cond_27c
    move-object v12, v4

    const v13, 0x1020057

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    sput-object v0, Landroidx/core/view/accessibility/c$a;->T:Landroidx/core/view/accessibility/c$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/view/accessibility/f$a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "Landroidx/core/view/accessibility/f;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/view/accessibility/f$a;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Landroidx/core/view/accessibility/c$a;->b:I

    .line 7
    iput-object p4, p0, Landroidx/core/view/accessibility/c$a;->d:Landroidx/core/view/accessibility/f;

    .line 8
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_17

    if-nez p1, :cond_17

    .line 9
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    goto :goto_19

    .line 10
    :cond_17
    iput-object p1, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    .line 11
    :goto_19
    iput-object p5, p0, Landroidx/core/view/accessibility/c$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/f;)Landroidx/core/view/accessibility/c$a;
    .registers 10

    .line 1
    new-instance v6, Landroidx/core/view/accessibility/c$a;

    iget v2, p0, Landroidx/core/view/accessibility/c$a;->b:I

    iget-object v5, p0, Landroidx/core/view/accessibility/c$a;->c:Ljava/lang/Class;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/core/view/accessibility/c$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Landroidx/core/view/accessibility/f;Ljava/lang/Class;)V

    return-object v6
.end method

.method public b()I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/os/Bundle;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->d:Landroidx/core/view/accessibility/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Landroidx/core/view/accessibility/c$a;->c:Ljava/lang/Class;

    if-eqz v2, :cond_42

    :try_start_a
    new-array v3, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/f$a;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_20

    .line 4
    :try_start_18
    invoke-virtual {v1, p2}, Landroidx/core/view/accessibility/f$a;->a(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_42

    :catch_1d
    move-exception p2

    move-object v0, v1

    goto :goto_21

    :catch_20
    move-exception p2

    .line 5
    :goto_21
    iget-object v1, p0, Landroidx/core/view/accessibility/c$a;->c:Ljava/lang/Class;

    if-nez v1, :cond_28

    const-string v1, "null"

    goto :goto_2c

    .line 6
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute command with argument class ViewCommandArgument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A11yActionCompat"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_42
    :goto_42
    iget-object p2, p0, Landroidx/core/view/accessibility/c$a;->d:Landroidx/core/view/accessibility/f;

    invoke-interface {p2, p1, v0}, Landroidx/core/view/accessibility/f;->a(Landroid/view/View;Landroidx/core/view/accessibility/f$a;)Z

    move-result p1

    return p1

    :cond_49
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/core/view/accessibility/c$a;

    if-nez v1, :cond_9

    return v0

    .line 2
    :cond_9
    check-cast p1, Landroidx/core/view/accessibility/c$a;

    .line 3
    iget-object v1, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 4
    iget-object p1, p1, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1d

    return v0

    .line 5
    :cond_14
    iget-object p1, p1, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/c$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

###### Class androidx.core.view.accessibility.c.b (androidx.core.view.accessibility.c$b)
.class public Landroidx/core/view/accessibility/c$b;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/accessibility/c$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZI)Landroidx/core/view/accessibility/c$b;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    .line 2
    new-instance v0, Landroidx/core/view/accessibility/c$b;

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/c$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    const/16 p3, 0x13

    if-lt v0, p3, :cond_1e

    .line 3
    new-instance p3, Landroidx/core/view/accessibility/c$b;

    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p3, p0}, Landroidx/core/view/accessibility/c$b;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 4
    :cond_1e
    new-instance p0, Landroidx/core/view/accessibility/c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c$b;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

###### Class androidx.core.view.accessibility.c.C0039c (androidx.core.view.accessibility.c$c)
.class public Landroidx/core/view/accessibility/c$c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/accessibility/c$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZZ)Landroidx/core/view/accessibility/c$c;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    .line 2
    new-instance v0, Landroidx/core/view/accessibility/c$c;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/c$c;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    const/16 p5, 0x13

    if-lt v0, p5, :cond_1e

    .line 3
    new-instance p5, Landroidx/core/view/accessibility/c$c;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {p5, p0}, Landroidx/core/view/accessibility/c$c;-><init>(Ljava/lang/Object;)V

    return-object p5

    .line 4
    :cond_1e
    new-instance p0, Landroidx/core/view/accessibility/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/c$c;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
