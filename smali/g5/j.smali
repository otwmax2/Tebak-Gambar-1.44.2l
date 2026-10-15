###### Class g5.j (g5.j)
.class public Lg5/j;
.super Lb5/m;
.source "com.google.firebase:firebase-auth-interop@@19.0.0"


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lb5/m;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg5/j;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/j;->o:Ljava/lang/String;

    return-object v0
.end method
