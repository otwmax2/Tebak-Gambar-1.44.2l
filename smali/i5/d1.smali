###### Class i5.d1 (i5.d1)
.class final Li5/d1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/g1;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Li5/b1;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p2, p0, Li5/d1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lg5/f0;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p2, p0, Li5/d1;->a:Ljava/lang/String;

    invoke-static {}, Lg5/e0;->V3()Lg5/e0;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lg5/f0;->b(Ljava/lang/String;Lg5/e0;)V

    return-void
.end method
