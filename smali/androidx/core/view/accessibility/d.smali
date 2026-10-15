###### Class androidx.core.view.accessibility.d (androidx.core.view.accessibility.d)
.class public Landroidx/core/view/accessibility/d;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/d$c;,
        Landroidx/core/view/accessibility/d$b;,
        Landroidx/core/view/accessibility/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/accessibility/d$c;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/d$c;-><init>(Landroidx/core/view/accessibility/d;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_11
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Landroidx/core/view/accessibility/d$b;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/d$b;-><init>(Landroidx/core/view/accessibility/d;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_1d
    const/16 v1, 0x10

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Landroidx/core/view/accessibility/d$a;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/d$a;-><init>(Landroidx/core/view/accessibility/d;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_29
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    :goto_2c
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ILandroidx/core/view/accessibility/c;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public b(I)Landroidx/core/view/accessibility/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Landroidx/core/view/accessibility/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public f(IILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.core.view.accessibility.d.a (androidx.core.view.accessibility.d$a)
.class Landroidx/core/view/accessibility/d$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/view/accessibility/d;


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/d;->b(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_a
    invoke-virtual {p1}, Landroidx/core/view/accessibility/c;->w0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/accessibility/d;->c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_26

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/accessibility/c;

    .line 6
    invoke-virtual {v2}, Landroidx/core/view/accessibility/c;->w0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return-object p2
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/accessibility/d;->f(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.accessibility.d.b (androidx.core.view.accessibility.d$b)
.class Landroidx/core/view/accessibility/d$b;
.super Landroidx/core/view/accessibility/d$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/d$a;-><init>(Landroidx/core/view/accessibility/d;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/d;->d(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    invoke-virtual {p1}, Landroidx/core/view/accessibility/c;->w0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.core.view.accessibility.d.c (androidx.core.view.accessibility.d$c)
.class Landroidx/core/view/accessibility/d$c;
.super Landroidx/core/view/accessibility/d$b;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/d$b;-><init>(Landroidx/core/view/accessibility/d;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/accessibility/d$a;->a:Landroidx/core/view/accessibility/d;

    .line 2
    invoke-static {p2}, Landroidx/core/view/accessibility/c;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/accessibility/d;->a(ILandroidx/core/view/accessibility/c;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
