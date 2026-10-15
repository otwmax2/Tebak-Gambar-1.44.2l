###### Class androidx.core.provider.g (androidx.core.provider.g)
.class public Landroidx/core/provider/g;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/g$c;,
        Landroidx/core/provider/g$a;,
        Landroidx/core/provider/g$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/g$b;)Landroid/graphics/Typeface;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroidx/core/graphics/e;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/g$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/e;)Landroidx/core/provider/g$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p1}, Landroidx/core/provider/d;->e(Landroid/content/Context;Landroidx/core/provider/e;Landroid/os/CancellationSignal;)Landroidx/core/provider/g$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroidx/core/provider/e;IZILandroid/os/Handler;Landroidx/core/provider/g$c;)Landroid/graphics/Typeface;
    .registers 8

    .line 1
    new-instance v0, Landroidx/core/provider/a;

    invoke-direct {v0, p6, p5}, Landroidx/core/provider/a;-><init>(Landroidx/core/provider/g$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_c

    .line 2
    invoke-static {p0, p1, v0, p2, p4}, Landroidx/core/provider/f;->e(Landroid/content/Context;Landroidx/core/provider/e;Landroidx/core/provider/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p3, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/provider/f;->d(Landroid/content/Context;Landroidx/core/provider/e;ILjava/util/concurrent/Executor;Landroidx/core/provider/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.provider.g.a (androidx.core.provider.g$a)
.class public Landroidx/core/provider/g$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/provider/g$b;


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/g$b;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/provider/g$a;->a:I

    .line 3
    iput-object p2, p0, Landroidx/core/provider/g$a;->b:[Landroidx/core/provider/g$b;

    return-void
.end method

.method static a(I[Landroidx/core/provider/g$b;)Landroidx/core/provider/g$a;
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/provider/g$a;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/g$a;-><init>(I[Landroidx/core/provider/g$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[Landroidx/core/provider/g$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/g$a;->b:[Landroidx/core/provider/g$b;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/provider/g$a;->a:I

    return v0
.end method

###### Class androidx.core.provider.g.b (androidx.core.provider.g$b)
.class public Landroidx/core/provider/g$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroidx/core/provider/g$b;->a:Landroid/net/Uri;

    .line 3
    iput p2, p0, Landroidx/core/provider/g$b;->b:I

    .line 4
    iput p3, p0, Landroidx/core/provider/g$b;->c:I

    .line 5
    iput-boolean p4, p0, Landroidx/core/provider/g$b;->d:Z

    .line 6
    iput p5, p0, Landroidx/core/provider/g$b;->e:I

    return-void
.end method

.method static a(Landroid/net/Uri;IIZI)Landroidx/core/provider/g$b;
    .registers 12

    .line 1
    new-instance v6, Landroidx/core/provider/g$b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/core/provider/g$b;-><init>(Landroid/net/Uri;IIZI)V

    return-object v6
.end method


# virtual methods
.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/provider/g$b;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/provider/g$b;->b:I

    return v0
.end method

.method public d()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/g$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/provider/g$b;->c:I

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/provider/g$b;->d:Z

    return v0
.end method

###### Class androidx.core.provider.g.c (androidx.core.provider.g$c)
.class public Landroidx/core/provider/g$c;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Landroid/graphics/Typeface;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method
