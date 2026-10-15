###### Class d2.j (d2.j)
.class Ld2/j;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final a:Lx2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/e<",
            "Lz1/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lx2/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lx2/e;-><init>(I)V

    iput-object v0, p0, Ld2/j;->a:Lx2/e;

    return-void
.end method


# virtual methods
.method public a(Lz1/c;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Ld2/j;->a:Lx2/e;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ld2/j;->a:Lx2/e;

    invoke-virtual {v1, p1}, Lx2/e;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    if-nez v1, :cond_36

    :try_start_e
    const-string v0, "SHA-256"

    .line 4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lz1/c;->a(Ljava/security/MessageDigest;)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lx2/h;->m([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_1f} :catch_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :goto_29
    iget-object v0, p0, Ld2/j;->a:Lx2/e;

    monitor-enter v0

    .line 10
    :try_start_2c
    iget-object v2, p0, Ld2/j;->a:Lx2/e;

    invoke-virtual {v2, p1, v1}, Lx2/e;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p1

    :cond_36
    :goto_36
    return-object v1

    :catchall_37
    move-exception p1

    .line 12
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method
