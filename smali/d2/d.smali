###### Class d2.d (d2.d)
.class public Ld2/d;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Ld2/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ld2/d$a;


# direct methods
.method public constructor <init>(Ld2/d$a;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ld2/d;->a:I

    .line 3
    iput-object p1, p0, Ld2/d;->b:Ld2/d$a;

    return-void
.end method


# virtual methods
.method public build()Ld2/a;
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/d;->b:Ld2/d$a;

    invoke-interface {v0}, Ld2/d$a;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    return-object v1

    .line 3
    :cond_1d
    iget v1, p0, Ld2/d;->a:I

    invoke-static {v0, v1}, Ld2/e;->d(Ljava/io/File;I)Ld2/a;

    move-result-object v0

    return-object v0
.end method

###### Class d2.d.a (d2.d$a)
.class public interface abstract Ld2/d$a;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract getCacheDirectory()Ljava/io/File;
.end method
