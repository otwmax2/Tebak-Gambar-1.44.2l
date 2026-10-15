###### Class d2.f (d2.f)
.class public final Ld2/f;
.super Ld2/d;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    .line 1
    invoke-direct {p0, p1, v0, v1}, Ld2/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "image_manager_disk_cache"

    .line 2
    invoke-direct {p0, p1, v0, p2}, Ld2/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 3
    new-instance v0, Ld2/f$a;

    invoke-direct {v0, p1, p2}, Ld2/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Ld2/d;-><init>(Ld2/d$a;I)V

    return-void
.end method

###### Class d2.f.a (d2.f$a)
.class Ld2/f$a;
.super Ljava/lang/Object;
.source "InternalCacheDiskCacheFactory.java"

# interfaces
.implements Ld2/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ld2/f$a;->a:Landroid/content/Context;

    iput-object p2, p0, Ld2/f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/f$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    iget-object v1, p0, Ld2/f$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld2/f$a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_16
    return-object v0
.end method
