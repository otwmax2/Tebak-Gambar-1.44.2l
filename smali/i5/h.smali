###### Class i5.h (i5.h)
.class final Li5/h;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic a:Li5/e;

.field private final synthetic b:Li5/i;


# direct methods
.method constructor <init>(Li5/i;Li5/e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Li5/h;->b:Li5/i;

    iput-object p2, p0, Li5/h;->a:Li5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    if-eqz v0, :cond_14

    .line 2
    iget-object p1, p0, Li5/h;->b:Li5/i;

    iget-object v0, p0, Li5/h;->a:Li5/e;

    invoke-interface {v0}, Li5/e;->a()Li5/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Li5/b;->b(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_14
    return-object p1
.end method
