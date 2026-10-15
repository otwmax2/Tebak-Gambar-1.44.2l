###### Class com.google.android.gms.internal.drive.zzhm (com.google.android.gms.internal.drive.zzhm)
.class public final Lcom/google/android/gms/internal/drive/zzhm;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/TransferPreferences;",
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
            "Lcom/google/android/gms/drive/TransferPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzhh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final v7(Lcom/google/android/gms/internal/drive/zzfj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzhh;->X0()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/TransferPreferencesBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfj;->V3()Lcom/google/android/gms/internal/drive/zzei;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V

    invoke-virtual {v1}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a()Lcom/google/android/gms/drive/TransferPreferences;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final y3(Lcom/google/android/gms/internal/drive/zzga;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzhh;->X0()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzga;->V3()Lcom/google/android/gms/drive/TransferPreferences;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
