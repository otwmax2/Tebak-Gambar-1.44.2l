###### Class androidx.appcompat.widget.v (androidx.appcompat.widget.v)
.class final Landroidx/appcompat/widget/v;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/v$a;
    }
.end annotation


# direct methods
.method static a(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_57

    const/16 v2, 0x18

    if-lt v0, v2, :cond_57

    .line 2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_57

    .line 3
    invoke-static {p0}, Landroidx/core/view/a0;->H(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_57

    .line 4
    :cond_18
    invoke-static {p0}, Landroidx/appcompat/widget/v;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_35

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t handle drop: no activity: view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReceiveContent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_35
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 7
    instance-of p0, p0, Landroid/widget/TextView;

    xor-int/2addr p0, v3

    return p0

    .line 8
    :cond_40
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_57

    .line 9
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_52

    .line 10
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/v$a;->a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result p0

    goto :goto_56

    .line 11
    :cond_52
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/v$a;->b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result p0

    :goto_56
    return p0

    :cond_57
    :goto_57
    return v1
.end method

.method static b(Landroid/widget/TextView;I)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_4a

    .line 2
    invoke-static {p0}, Landroidx/core/view/a0;->H(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    const v0, 0x1020022

    if-eq p1, v0, :cond_18

    const v2, 0x1020031

    if-eq p1, v2, :cond_18

    goto :goto_4a

    .line 3
    :cond_18
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_2c

    .line 4
    :cond_28
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    :goto_2c
    const/4 v3, 0x1

    if-eqz v2, :cond_49

    .line 5
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_49

    .line 6
    new-instance v4, Landroidx/core/view/c$a;

    invoke-direct {v4, v2, v3}, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V

    if-ne p1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x1

    .line 7
    :goto_3e
    invoke-virtual {v4, v1}, Landroidx/core/view/c$a;->c(I)Landroidx/core/view/c$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Landroidx/core/view/a0;->g0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;

    :cond_49
    return v3

    :cond_4a
    :goto_4a
    return v1
.end method

.method static c(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :goto_4
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    .line 3
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 4
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 5
    :cond_f
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_4

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

###### Class androidx.appcompat.widget.v.a (androidx.appcompat.widget.v$a)
.class final Landroidx/appcompat/widget/v$a;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 2
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4
    :try_start_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5
    new-instance p2, Landroidx/core/view/c$a;

    .line 6
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {p2}, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Landroidx/core/view/a0;->g0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_31

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 p0, 0x1

    return p0

    :catchall_31
    move-exception p0

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 9
    throw p0
.end method

.method static b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 2
    new-instance p2, Landroidx/core/view/c$a;

    .line 3
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {p2}, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;

    move-result-object p0

    .line 4
    invoke-static {p1, p0}, Landroidx/core/view/a0;->g0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;

    const/4 p0, 0x1

    return p0
.end method
