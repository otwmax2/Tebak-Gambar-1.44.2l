###### Class k2.s (k2.s)
.class public Lk2/s;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lk2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lk2/s$a;


# instance fields
.field private a:Lk2/s$a;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk2/s$a;

    invoke-direct {v0}, Lk2/s$a;-><init>()V

    sput-object v0, Lk2/s;->c:Lk2/s$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lk2/s;->c:Lk2/s$a;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lk2/s;-><init>(Lk2/s$a;I)V

    return-void
.end method

.method constructor <init>(Lk2/s$a;I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/s;->a:Lk2/s$a;

    .line 4
    iput p2, p0, Lk2/s;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/os/ParcelFileDescriptor;Lc2/c;IILz1/a;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lk2/s;->a:Lk2/s$a;

    invoke-virtual {p2}, Lk2/s$a;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 3
    iget p3, p0, Lk2/s;->b:I

    if-ltz p3, :cond_17

    int-to-long p3, p3

    .line 4
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1b

    .line 5
    :cond_17
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 6
    :goto_1b
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object p3
.end method

###### Class k2.s.a (k2.s$a)
.class Lk2/s$a;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaMetadataRetriever;
    .registers 2

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-object v0
.end method
