###### Class c2.a (c2.a)
.class Lc2/a;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lc2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc2/a$a;,
        Lc2/a$b;
    }
.end annotation


# instance fields
.field private final a:Lc2/a$b;

.field private final b:Lc2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc2/e<",
            "Lc2/a$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc2/a$b;

    invoke-direct {v0}, Lc2/a$b;-><init>()V

    iput-object v0, p0, Lc2/a;->a:Lc2/a$b;

    .line 3
    new-instance v0, Lc2/e;

    invoke-direct {v0}, Lc2/e;-><init>()V

    iput-object v0, p0, Lc2/a;->b:Lc2/e;

    return-void
.end method

.method static synthetic g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lc2/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lc2/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc2/a;->a:Lc2/a$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc2/a$b;->e(IILandroid/graphics/Bitmap$Config;)Lc2/a$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc2/a;->b:Lc2/e;

    invoke-virtual {v1, v0, p1}, Lc2/e;->d(Lc2/h;Ljava/lang/Object;)V

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lc2/a;->a:Lc2/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lc2/a$b;->e(IILandroid/graphics/Bitmap$Config;)Lc2/a$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc2/a;->b:Lc2/e;

    invoke-virtual {p2, p1}, Lc2/e;->a(Lc2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public c()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lc2/a;->b:Lc2/e;

    invoke-virtual {v0}, Lc2/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lc2/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lx2/h;->f(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public f(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lc2/a;->i(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc2/a;->b:Lc2/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c2.a.C0090a (c2.a$a)
.class Lc2/a$a;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lc2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lc2/a$b;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lc2/a$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc2/a$a;->a:Lc2/a$b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc2/a$a;->a:Lc2/a$b;

    invoke-virtual {v0, p0}, Lc2/b;->c(Lc2/h;)V

    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 1
    iput p1, p0, Lc2/a$a;->b:I

    .line 2
    iput p2, p0, Lc2/a$a;->c:I

    .line 3
    iput-object p3, p0, Lc2/a$a;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lc2/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    check-cast p1, Lc2/a$a;

    .line 3
    iget v0, p0, Lc2/a$a;->b:I

    iget v2, p1, Lc2/a$a;->b:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lc2/a$a;->c:I

    iget v2, p1, Lc2/a$a;->c:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lc2/a$a;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lc2/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lc2/a$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lc2/a$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc2/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lc2/a$a;->b:I

    iget v1, p0, Lc2/a$a;->c:I

    iget-object v2, p0, Lc2/a$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lc2/a;->g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c2.a.b (c2.a$b)
.class Lc2/a$b;
.super Lc2/b;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc2/b<",
        "Lc2/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lc2/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lc2/h;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc2/a$b;->d()Lc2/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lc2/a$a;
    .registers 2

    .line 1
    new-instance v0, Lc2/a$a;

    invoke-direct {v0, p0}, Lc2/a$a;-><init>(Lc2/a$b;)V

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Lc2/a$a;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lc2/b;->b()Lc2/h;

    move-result-object v0

    check-cast v0, Lc2/a$a;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lc2/a$a;->b(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
