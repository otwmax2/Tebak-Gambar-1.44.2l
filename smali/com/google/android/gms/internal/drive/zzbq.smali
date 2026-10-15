###### Class com.google.android.gms.internal.drive.zzbq (com.google.android.gms.internal.drive.zzbq)
.class final Lcom/google/android/gms/internal/drive/zzbq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
        "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:J

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbp;JJ)V
    .registers 6

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/drive/zzbq;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/drive/zzbq;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzbq;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/drive/zzbq;->b:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method
