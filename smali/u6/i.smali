###### Class u6.i (u6.i)
.class public Lu6/i;
.super Lu6/g;
.source "FirebaseRemoteConfigServerException.java"


# instance fields
.field private final o:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lu6/g;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lu6/i;->o:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 3
    invoke-direct {p0, p2, p3}, Lu6/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput p1, p0, Lu6/i;->o:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lu6/i;->o:I

    return v0
.end method
