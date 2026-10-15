###### Class androidx.emoji2.text.l (androidx.emoji2.text.l)
.class public final Landroidx/emoji2/text/l;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/l$a;
    }
.end annotation


# instance fields
.field private final a:Ll0/b;

.field private final b:[C

.field private final c:Landroidx/emoji2/text/l$a;

.field private final d:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Ll0/b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/text/l;->d:Landroid/graphics/Typeface;

    .line 3
    iput-object p2, p0, Landroidx/emoji2/text/l;->a:Ll0/b;

    .line 4
    new-instance p1, Landroidx/emoji2/text/l$a;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/l$a;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/l;->c:Landroidx/emoji2/text/l$a;

    .line 5
    invoke-virtual {p2}, Ll0/b;->k()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Landroidx/emoji2/text/l;->b:[C

    .line 6
    invoke-direct {p0, p2}, Landroidx/emoji2/text/l;->a(Ll0/b;)V

    return-void
.end method

.method private a(Ll0/b;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ll0/b;->k()I

    move-result p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_1d

    .line 2
    new-instance v1, Landroidx/emoji2/text/f;

    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/l;I)V

    .line 3
    invoke-virtual {v1}, Landroidx/emoji2/text/f;->f()I

    move-result v2

    iget-object v3, p0, Landroidx/emoji2/text/l;->b:[C

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 4
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/l;->h(Landroidx/emoji2/text/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method public static b(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/l;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    .line 1
    invoke-static {v0}, Landroidx/core/os/m;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/emoji2/text/l;

    invoke-static {p1}, Landroidx/emoji2/text/k;->b(Ljava/nio/ByteBuffer;)Ll0/b;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/l;-><init>(Landroid/graphics/Typeface;Ll0/b;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 3
    invoke-static {}, Landroidx/core/os/m;->b()V

    return-object v0

    :catchall_12
    move-exception p0

    invoke-static {}, Landroidx/core/os/m;->b()V

    .line 4
    throw p0
.end method


# virtual methods
.method public c()[C
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l;->b:[C

    return-object v0
.end method

.method public d()Ll0/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l;->a:Ll0/b;

    return-object v0
.end method

.method e()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l;->a:Ll0/b;

    invoke-virtual {v0}, Ll0/b;->l()I

    move-result v0

    return v0
.end method

.method f()Landroidx/emoji2/text/l$a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l;->c:Landroidx/emoji2/text/l$a;

    return-object v0
.end method

.method g()Landroid/graphics/Typeface;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method h(Landroidx/emoji2/text/f;)V
    .registers 6

    const-string v0, "emoji metadata cannot be null"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/util/h;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroidx/emoji2/text/f;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v3, "invalid metadata codepoint length"

    invoke-static {v0, v3}, Landroidx/core/util/h;->a(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Landroidx/emoji2/text/l;->c:Landroidx/emoji2/text/l$a;

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->c()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, p1, v2, v3}, Landroidx/emoji2/text/l$a;->c(Landroidx/emoji2/text/f;II)V

    return-void
.end method

###### Class androidx.emoji2.text.l.a (androidx.emoji2.text.l$a)
.class Landroidx/emoji2/text/l$a;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/emoji2/text/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/emoji2/text/f;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/l$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/l$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method a(I)Landroidx/emoji2/text/l$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l$a;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/l$a;

    :goto_c
    return-object p1
.end method

.method final b()Landroidx/emoji2/text/f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/l$a;->b:Landroidx/emoji2/text/f;

    return-object v0
.end method

.method c(Landroidx/emoji2/text/f;II)V
    .registers 7

    .line 1
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/l$a;->a(I)Landroidx/emoji2/text/l$a;

    move-result-object v0

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Landroidx/emoji2/text/l$a;

    invoke-direct {v0}, Landroidx/emoji2/text/l$a;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/l$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->b(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    if-le p3, p2, :cond_20

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/l$a;->c(Landroidx/emoji2/text/f;II)V

    goto :goto_22

    .line 5
    :cond_20
    iput-object p1, v0, Landroidx/emoji2/text/l$a;->b:Landroidx/emoji2/text/f;

    :goto_22
    return-void
.end method
