###### Class i5.y0 (i5.y0)
.class public final Li5/y0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li5/y0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Li5/v0;
    .registers 4

    .line 1
    new-instance v0, Li5/v0;

    iget-object v1, p0, Li5/y0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li5/v0;-><init>(Ljava/lang/String;Li5/w0;)V

    return-object v0
.end method
