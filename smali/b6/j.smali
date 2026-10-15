###### Class b6.j (b6.j)
.class final Lb6/j;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lb6/e;",
        "La6/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Le5/a;


# direct methods
.method constructor <init>(Le5/a;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    .line 2
    iput-object p2, p0, Lb6/j;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lb6/j;->e:Le5/a;

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb6/e;

    .line 2
    new-instance v0, Lb6/h;

    iget-object v1, p0, Lb6/j;->e:Le5/a;

    invoke-direct {v0, v1, p2}, Lb6/h;-><init>(Le5/a;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lb6/j;->d:Ljava/lang/String;

    .line 3
    :try_start_b
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lb6/k;

    invoke-interface {p1, v0, p2}, Lb6/k;->a6(Lb6/i;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
