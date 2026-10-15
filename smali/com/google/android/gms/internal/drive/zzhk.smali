###### Class com.google.android.gms.internal.drive.zzhk (com.google.android.gms.internal.drive.zzhk)
.class public final Lcom/google/android/gms/internal/drive/zzhk;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/DriveFolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzhh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final l9(Lcom/google/android/gms/internal/drive/zzfn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzhh;->X0()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfn;->V3()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/DriveId;->W3()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
