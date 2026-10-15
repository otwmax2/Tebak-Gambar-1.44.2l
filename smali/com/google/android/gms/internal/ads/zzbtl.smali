###### Class com.google.android.gms.internal.ads.zzbtl (com.google.android.gms.internal.ads.zzbtl)
.class public final Lcom/google/android/gms/internal/ads/zzbtl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbtl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field o:Landroid/os/ParcelFileDescriptor;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private p:Landroid/os/Parcelable;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbtl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->p:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->q:Z

    return-void
.end method


# virtual methods
.method public final V3(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtl;->q:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p1, "File descriptor is empty, returning null."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-object v1

    :cond_f
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_47
    .catchall {:try_start_1b .. :try_end_25} :catchall_45

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7
    :try_start_2c
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->p:Landroid/os/Parcelable;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_40

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbtl;->q:Z

    goto :goto_55

    :catchall_40
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p1

    :catchall_45
    move-exception p1

    goto :goto_51

    :catch_47
    move-exception p1

    :try_start_48
    const-string v2, "Could not read from parcel file descriptor"

    .line 12
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-object v1

    :goto_51
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 14
    throw p1

    .line 15
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtl;->p:Landroid/os/Parcelable;

    .line 16
    check-cast p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtl;->p:Landroid/os/Parcelable;

    .line 2
    invoke-interface {v2, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_47

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    .line 5
    :try_start_16
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    .line 6
    aget-object v4, v3, v4

    .line 7
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_31

    .line 8
    :try_start_22
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbtk;

    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzbtk;-><init>(Ljava/io/OutputStream;[B)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    aget-object v0, v3, v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_44

    :catch_2f
    move-exception v2

    goto :goto_33

    :catch_31
    move-exception v2

    move-object v5, v0

    :goto_33
    const-string v3, "Error transporting the ad response"

    .line 10
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    const-string v4, "LargeParcelTeleporter.pipeData.2"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 13
    :goto_44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    goto :goto_4c

    :catchall_47
    move-exception p1

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p1

    .line 16
    :cond_4c
    :goto_4c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbtl;->o:Landroid/os/ParcelFileDescriptor;

    .line 17
    invoke-static {p1, v2, v3, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbtk (com.google.android.gms.internal.ads.zzbtk)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbtk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ljava/io/OutputStream;

.field public final synthetic p:[B


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtk;->o:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtk;->p:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtk;->o:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtk;->p:[B

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbtl;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v2, 0x0

    .line 1
    :try_start_7
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1f
    .catchall {:try_start_7 .. :try_end_c} :catchall_1d

    .line 2
    :try_start_c
    array-length v2, v1

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_1a
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-void

    :catchall_17
    move-exception v1

    move-object v2, v3

    goto :goto_38

    :catch_1a
    move-exception v1

    move-object v2, v3

    goto :goto_20

    :catchall_1d
    move-exception v1

    goto :goto_38

    :catch_1f
    move-exception v1

    :goto_20
    :try_start_20
    const-string v3, "Error transporting the ad response"

    .line 5
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v3

    const-string v4, "LargeParcelTeleporter.pipeData.1"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1d

    if-nez v2, :cond_34

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-void

    .line 8
    :cond_34
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    return-void

    :goto_38
    if-nez v2, :cond_3e

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    goto :goto_41

    .line 10
    :cond_3e
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 11
    :goto_41
    throw v1
.end method
