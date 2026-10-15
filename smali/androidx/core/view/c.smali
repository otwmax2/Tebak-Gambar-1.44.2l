###### Class androidx.core.view.c (androidx.core.view.c)
.class public final Landroidx/core/view/c;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/c$b;,
        Landroidx/core/view/c$d;,
        Landroidx/core/view/c$c;,
        Landroidx/core/view/c$a;,
        Landroidx/core/view/c$e;,
        Landroidx/core/view/c$g;,
        Landroidx/core/view/c$f;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/view/c$f;


# direct methods
.method constructor <init>(Landroidx/core/view/c$f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    const-string p0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object p0

    .line 1
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "SOURCE_PROCESS_TEXT"

    return-object p0

    :cond_19
    const-string p0, "SOURCE_AUTOFILL"

    return-object p0

    :cond_1c
    const-string p0, "SOURCE_DRAG_AND_DROP"

    return-object p0

    :cond_1f
    const-string p0, "SOURCE_INPUT_METHOD"

    return-object p0

    :cond_22
    const-string p0, "SOURCE_CLIPBOARD"

    return-object p0

    :cond_25
    const-string p0, "SOURCE_APP"

    return-object p0
.end method

.method public static g(Landroid/view/ContentInfo;)Landroidx/core/view/c;
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/view/c;

    new-instance v1, Landroidx/core/view/c$e;

    invoke-direct {v1, p0}, Landroidx/core/view/c$e;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/c;-><init>(Landroidx/core/view/c$f;)V

    return-object v0
.end method


# virtual methods
.method public b()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    invoke-interface {v0}, Landroidx/core/view/c$f;->a()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    invoke-interface {v0}, Landroidx/core/view/c$f;->b()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    invoke-interface {v0}, Landroidx/core/view/c$f;->d()I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/ContentInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    invoke-interface {v0}, Landroidx/core/view/c$f;->c()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/c$f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.view.c.a (androidx.core.view.c$a)
.class public final Landroidx/core/view/c$a;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/c$c;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/c$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/c$b;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    goto :goto_18

    .line 4
    :cond_11
    new-instance v0, Landroidx/core/view/c$d;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/c$d;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    :goto_18
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    invoke-interface {v0}, Landroidx/core/view/c$c;->build()Landroidx/core/view/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Landroidx/core/view/c$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    invoke-interface {v0, p1}, Landroidx/core/view/c$c;->setExtras(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public c(I)Landroidx/core/view/c$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    invoke-interface {v0, p1}, Landroidx/core/view/c$c;->b(I)V

    return-object p0
.end method

.method public d(Landroid/net/Uri;)Landroidx/core/view/c$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$a;->a:Landroidx/core/view/c$c;

    invoke-interface {v0, p1}, Landroidx/core/view/c$c;->a(Landroid/net/Uri;)V

    return-object p0
.end method

###### Class androidx.core.view.c.b (androidx.core.view.c$b)
.class final Landroidx/core/view/c$b;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/ContentInfo$Builder;


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/ContentInfo$Builder;

    invoke-direct {v0, p1, p2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/c$b;->a:Landroid/view/ContentInfo$Builder;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$b;->a:Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$b;->a:Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public build()Landroidx/core/view/c;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/view/c;

    new-instance v1, Landroidx/core/view/c$e;

    iget-object v2, p0, Landroidx/core/view/c$b;->a:Landroid/view/ContentInfo$Builder;

    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/view/c$e;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/c;-><init>(Landroidx/core/view/c$f;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$b;->a:Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

###### Class androidx.core.view.c.InterfaceC0042c (androidx.core.view.c$c)
.class interface abstract Landroidx/core/view/c$c;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Landroid/net/Uri;)V
.end method

.method public abstract b(I)V
.end method

.method public abstract build()Landroidx/core/view/c;
.end method

.method public abstract setExtras(Landroid/os/Bundle;)V
.end method

###### Class androidx.core.view.c.d (androidx.core.view.c$d)
.class final Landroidx/core/view/c$d;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:Landroid/content/ClipData;

.field b:I

.field c:I

.field d:Landroid/net/Uri;

.field e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/c$d;->a:Landroid/content/ClipData;

    .line 3
    iput p2, p0, Landroidx/core/view/c$d;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/c$d;->d:Landroid/net/Uri;

    return-void
.end method

.method public b(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/view/c$d;->c:I

    return-void
.end method

.method public build()Landroidx/core/view/c;
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/view/c;

    new-instance v1, Landroidx/core/view/c$g;

    invoke-direct {v1, p0}, Landroidx/core/view/c$g;-><init>(Landroidx/core/view/c$d;)V

    invoke-direct {v0, v1}, Landroidx/core/view/c;-><init>(Landroidx/core/view/c$f;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/c$d;->e:Landroid/os/Bundle;

    return-void
.end method

###### Class androidx.core.view.c.e (androidx.core.view.c$e)
.class final Landroidx/core/view/c$e;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/ContentInfo;


# direct methods
.method constructor <init>(Landroid/view/ContentInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ContentInfo;

    iput-object p1, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public c()Landroid/view/ContentInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getSource()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c$e;->a:Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.core.view.c.f (androidx.core.view.c$f)
.class interface abstract Landroidx/core/view/c$f;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "f"
.end annotation


# virtual methods
.method public abstract a()Landroid/content/ClipData;
.end method

.method public abstract b()I
.end method

.method public abstract c()Landroid/view/ContentInfo;
.end method

.method public abstract d()I
.end method

###### Class androidx.core.view.c.g (androidx.core.view.c$g)
.class final Landroidx/core/view/c$g;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/content/ClipData;

.field private final b:I

.field private final c:I

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/core/view/c$d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/core/view/c$d;->a:Landroid/content/ClipData;

    invoke-static {v0}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/c$g;->a:Landroid/content/ClipData;

    .line 3
    iget v0, p1, Landroidx/core/view/c$d;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "source"

    invoke-static {v0, v1, v2, v3}, Landroidx/core/util/h;->b(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/view/c$g;->b:I

    .line 4
    iget v0, p1, Landroidx/core/view/c$d;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/util/h;->e(II)I

    move-result v0

    iput v0, p0, Landroidx/core/view/c$g;->c:I

    .line 5
    iget-object v0, p1, Landroidx/core/view/c$d;->d:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/c$g;->d:Landroid/net/Uri;

    .line 6
    iget-object p1, p1, Landroidx/core/view/c$d;->e:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/c$g;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c$g;->a:Landroid/content/ClipData;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/view/c$g;->c:I

    return v0
.end method

.method public c()Landroid/view/ContentInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/view/c$g;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoCompat{clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c$g;->a:Landroid/content/ClipData;

    .line 2
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/c$g;->b:I

    .line 3
    invoke-static {v1}, Landroidx/core/view/c;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/view/c$g;->c:I

    .line 4
    invoke-static {v1}, Landroidx/core/view/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/core/view/c$g;->d:Landroid/net/Uri;

    const-string v2, ""

    if-nez v1, :cond_37

    move-object v1, v2

    goto :goto_57

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", hasLinkUri("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/core/view/c$g;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Landroidx/core/view/c$g;->e:Landroid/os/Bundle;

    if-nez v1, :cond_5f

    goto :goto_61

    :cond_5f
    const-string v2, ", hasExtras"

    :goto_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
