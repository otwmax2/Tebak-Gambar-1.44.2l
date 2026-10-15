###### Class i5.e1 (i5.e1)
.class final Li5/e1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/g1;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Li5/b1;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    iput-object p2, p0, Li5/e1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lg5/f0;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p2, p0, Li5/e1;->a:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {p2}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lg5/f0;->d(Lb5/m;)V

    return-void
.end method
