###### Class y8.s (y8.s)
.class public Ly8/s;
.super Ljava/lang/Object;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/s$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Landroid/app/Activity;Lt1/h;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0, p1}, Ly8/s;->f(Landroid/app/Activity;Lt1/h;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ly8/s$a;Lt1/h;)Ljava/lang/Void;
    .registers 2

    invoke-static {p0, p1}, Ly8/s;->g(Ly8/s$a;Lt1/h;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0, p1}, Ly8/s;->e(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(ZLandroid/app/Activity;Ly8/s$a;Lt1/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/o;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ly8/s$a;->a()V

    .line 3
    new-instance v0, Ly8/p;

    invoke-direct {v0, p1, p0}, Ly8/p;-><init>(Landroid/app/Activity;Z)V

    invoke-static {v0, p3}, Lt1/h;->e(Ljava/util/concurrent/Callable;Lt1/c;)Lt1/h;

    move-result-object p0

    new-instance v0, Ly8/q;

    invoke-direct {v0, p1}, Ly8/q;-><init>(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p0, v0, p3}, Lt1/h;->k(Lt1/f;Lt1/c;)Lt1/h;

    move-result-object p0

    new-instance p1, Ly8/r;

    invoke-direct {p1, p2}, Ly8/r;-><init>(Ly8/s$a;)V

    sget-object p2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lt1/h;->j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    return-void
.end method

.method private static synthetic e(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ly8/s;->h(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p1, :cond_45

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_e

    .line 3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    :cond_e
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1

    :cond_45
    return-object p0
.end method

.method private static synthetic f(Landroid/app/Activity;Lt1/h;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 3
    :cond_11
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Ly8/h;->t(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic g(Ly8/s$a;Lt1/h;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 3
    :cond_11
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-interface {p0, p1}, Ly8/s$a;->b(Landroid/net/Uri;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildDrawingCache()V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    return-object v1
.end method

###### Class y8.s.a (y8.s$a)
.class public interface abstract Ly8/s$a;
.super Ljava/lang/Object;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly8/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroid/net/Uri;)V
.end method

###### Class y8.p (y8.p)
.class public final synthetic Ly8/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/p;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Ly8/p;->b:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ly8/p;->a:Landroid/app/Activity;

    iget-boolean v1, p0, Ly8/p;->b:Z

    invoke-static {v0, v1}, Ly8/s;->c(Landroid/app/Activity;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

###### Class y8.q (y8.q)
.class public final synthetic Ly8/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/q;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ly8/q;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Ly8/s;->a(Landroid/app/Activity;Lt1/h;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

###### Class y8.r (y8.r)
.class public final synthetic Ly8/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Ly8/s$a;


# direct methods
.method public synthetic constructor <init>(Ly8/s$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/r;->a:Ly8/s$a;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ly8/r;->a:Ly8/s$a;

    invoke-static {v0, p1}, Ly8/s;->b(Ly8/s$a;Lt1/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
