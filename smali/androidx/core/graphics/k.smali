###### Class androidx.core.graphics.k (androidx.core.graphics.k)
.class Landroidx/core/graphics/k;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/k$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanConcurrentHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroidx/core/content/res/e$c;",
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
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Landroid/graphics/Typeface;Landroidx/core/content/res/e$c;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroidx/core/graphics/k;->j(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Landroidx/core/graphics/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method private f(Landroidx/core/content/res/e$c;I)Landroidx/core/content/res/e$d;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/res/e$c;->a()[Landroidx/core/content/res/e$d;

    move-result-object p1

    new-instance v0, Landroidx/core/graphics/k$b;

    invoke-direct {v0, p0}, Landroidx/core/graphics/k$b;-><init>(Landroidx/core/graphics/k;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/k;->g([Ljava/lang/Object;ILandroidx/core/graphics/k$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/content/res/e$d;

    return-object p1
.end method

.method private static g([Ljava/lang/Object;ILandroidx/core/graphics/k$c;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/k$c<",
            "TT;>;)TT;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    const/16 v0, 0x190

    goto :goto_9

    :cond_7
    const/16 v0, 0x2bc

    :goto_9
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 1
    array-length v5, p0

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_3a

    aget-object v7, p0, v6

    .line 2
    invoke-interface {p2, v7}, Landroidx/core/graphics/k$c;->a(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 3
    invoke-interface {p2, v7}, Landroidx/core/graphics/k$c;->b(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, p1, :cond_2f

    const/4 v9, 0x0

    goto :goto_30

    :cond_2f
    const/4 v9, 0x1

    :goto_30
    add-int/2addr v8, v9

    if-eqz v3, :cond_35

    if-le v4, v8, :cond_37

    :cond_35
    move-object v3, v7

    move v4, v8

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_3a
    return-object v3
.end method

.method private static j(Landroid/graphics/Typeface;)J
    .registers 7

    const-string v0, "Could not retrieve font from family."

    const-string v1, "TypefaceCompatBaseImpl"

    const-wide/16 v2, 0x0

    if-nez p0, :cond_9

    return-wide v2

    .line 1
    :cond_9
    :try_start_9
    const-class v4, Landroid/graphics/Typeface;

    const-string v5, "native_instance"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_1f} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1f} :catch_20

    return-wide v0

    :catch_20
    move-exception p0

    .line 5
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2

    :catch_25
    move-exception p0

    .line 6
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v2
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroidx/core/content/res/e$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 11

    .line 1
    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/k;->f(Landroidx/core/content/res/e$c;I)Landroidx/core/content/res/e$d;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    invoke-virtual {v0}, Landroidx/core/content/res/e$d;->b()I

    move-result v2

    invoke-virtual {v0}, Landroidx/core/content/res/e$d;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p3

    move v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/e;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/k;->a(Landroid/graphics/Typeface;Landroidx/core/content/res/e$c;)V

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/g$b;I)Landroid/graphics/Typeface;
    .registers 7

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_6

    return-object v0

    .line 2
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/k;->h([Landroidx/core/provider/g$b;I)Landroidx/core/provider/g$b;

    move-result-object p2

    .line 3
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/core/provider/g$b;->d()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_26
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    .line 4
    :try_start_16
    invoke-virtual {p0, p1, p2}, Landroidx/core/graphics/k;->d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_27
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    .line 5
    invoke-static {p2}, Landroidx/core/graphics/l;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1e
    move-exception p1

    move-object v0, p2

    goto :goto_22

    :catchall_21
    move-exception p1

    :goto_22
    invoke-static {v0}, Landroidx/core/graphics/l;->a(Ljava/io/Closeable;)V

    .line 6
    throw p1

    :catch_26
    move-object p2, v0

    .line 7
    :catch_27
    invoke-static {p2}, Landroidx/core/graphics/l;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method protected d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/core/graphics/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 2
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroidx/core/graphics/l;->d(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    .line 4
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    throw p2

    .line 7
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .line 1
    invoke-static {p1}, Landroidx/core/graphics/l;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_8

    return-object p4

    .line 2
    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Landroidx/core/graphics/l;->c(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    .line 4
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    throw p2

    .line 7
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method protected h([Landroidx/core/provider/g$b;I)Landroidx/core/provider/g$b;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/graphics/k$a;

    invoke-direct {v0, p0}, Landroidx/core/graphics/k$a;-><init>(Landroidx/core/graphics/k;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/k;->g([Ljava/lang/Object;ILandroidx/core/graphics/k$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/provider/g$b;

    return-object p1
.end method

.method i(Landroid/graphics/Typeface;)Landroidx/core/content/res/e$c;
    .registers 6

    .line 1
    invoke-static {p1}, Landroidx/core/graphics/k;->j(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_c
    iget-object p1, p0, Landroidx/core/graphics/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/content/res/e$c;

    return-object p1
.end method

###### Class androidx.core.graphics.k.a (androidx.core.graphics.k$a)
.class Landroidx/core/graphics/k$a;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/k;->h([Landroidx/core/provider/g$b;I)Landroidx/core/provider/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/k$c<",
        "Landroidx/core/provider/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/graphics/k;


# direct methods
.method constructor <init>(Landroidx/core/graphics/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/graphics/k$a;->a:Landroidx/core/graphics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/provider/g$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/k$a;->c(Landroidx/core/provider/g$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/provider/g$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/k$a;->d(Landroidx/core/provider/g$b;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/core/provider/g$b;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/g$b;->e()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/core/provider/g$b;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/g$b;->f()Z

    move-result p1

    return p1
.end method

###### Class androidx.core.graphics.k.b (androidx.core.graphics.k$b)
.class Landroidx/core/graphics/k$b;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/k;->f(Landroidx/core/content/res/e$c;I)Landroidx/core/content/res/e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/k$c<",
        "Landroidx/core/content/res/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/graphics/k;


# direct methods
.method constructor <init>(Landroidx/core/graphics/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/graphics/k$b;->a:Landroidx/core/graphics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/content/res/e$d;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/k$b;->c(Landroidx/core/content/res/e$d;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/content/res/e$d;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/k$b;->d(Landroidx/core/content/res/e$d;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/core/content/res/e$d;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/res/e$d;->e()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/core/content/res/e$d;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/res/e$d;->f()Z

    move-result p1

    return p1
.end method

###### Class androidx.core.graphics.k.c (androidx.core.graphics.k$c)
.class interface abstract Landroidx/core/graphics/k$c;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
