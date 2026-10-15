###### Class b6.f (b6.f)
.class public final Lb6/f;
.super La6/a;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Le5/a;


# direct methods
.method public constructor <init>(Lb5/g;Le5/a;)V
    .registers 4

    .line 1
    new-instance v0, Lb6/d;

    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lb6/d;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lb6/f;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Le5/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Le5/a;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;",
            "Le5/a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, La6/a;-><init>()V

    .line 3
    iput-object p1, p0, Lb6/f;->a:Lcom/google/android/gms/common/api/GoogleApi;

    .line 4
    iput-object p2, p0, Lb6/f;->b:Le5/a;

    if-nez p2, :cond_10

    const-string p1, "FDL"

    const-string p2, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "La6/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb6/f;->a:Lcom/google/android/gms/common/api/GoogleApi;

    new-instance v1, Lb6/j;

    iget-object v2, p0, Lb6/f;->b:Le5/a;

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lb6/j;-><init>(Le5/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->o(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    sget-object v1, Lb6/a;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v2, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA"

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lb6/a;

    if-eqz p1, :cond_23

    .line 5
    new-instance v1, La6/b;

    invoke-direct {v1, p1}, La6/b;-><init>(Lb6/a;)V

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_2a

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :cond_2a
    return-object v0
.end method
