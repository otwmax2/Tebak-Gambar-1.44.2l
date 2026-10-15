###### Class com.google.android.gms.tasks.e (com.google.android.gms.tasks.e)
.class final Lcom/google/android/gms/tasks/e;
.super Lcom/google/android/gms/tasks/CancellationToken;
.source "com.google.android.gms:play-services-tasks@@18.0.2"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/z;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/z;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/e;->a:Lcom/google/android/gms/tasks/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/e;->a:Lcom/google/android/gms/tasks/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/z;->A(Ljava/lang/Object;)Z

    return-void
.end method
