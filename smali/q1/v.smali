###### Class q1.v (q1.v)
.class public Lq1/v;
.super Ljava/lang/Object;
.source "WorkTypeConverters.java"


# direct methods
.method public static a(Li1/a;)I
    .registers 4

    .line 1
    sget-object v0, Lq1/v$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    return v1

    .line 2
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static b([B)Li1/c;
    .registers 7

    .line 1
    new-instance v0, Li1/c;

    invoke-direct {v0}, Li1/c;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 2
    :cond_8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 3
    :try_start_e
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3d
    .catchall {:try_start_e .. :try_end_13} :catchall_39

    .line 4
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    :goto_17
    if-lez p0, :cond_2b

    .line 5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v4

    .line 7
    invoke-virtual {v0, v3, v4}, Li1/c;->a(Landroid/net/Uri;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_28} :catch_37
    .catchall {:try_start_13 .. :try_end_28} :catchall_57

    add-int/lit8 p0, p0, -0x1

    goto :goto_17

    .line 8
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_52

    goto :goto_56

    :catch_37
    move-exception p0

    goto :goto_41

    :catchall_39
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_58

    :catch_3d
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    .line 11
    :goto_41
    :try_start_41
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_57

    if-eqz v2, :cond_4e

    .line 12
    :try_start_46
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_56
    return-object v0

    :catchall_57
    move-exception p0

    :goto_58
    if-eqz v2, :cond_62

    .line 16
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :goto_6a
    goto :goto_6c

    :goto_6b
    throw p0

    :goto_6c
    goto :goto_6b
.end method

.method public static c(Li1/c;)[B
    .registers 5

    .line 1
    invoke-virtual {p0}, Li1/c;->c()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    :try_start_d
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_54
    .catchall {:try_start_d .. :try_end_12} :catchall_52

    .line 4
    :try_start_12
    invoke-virtual {p0}, Li1/c;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    invoke-virtual {p0}, Li1/c;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/c$a;

    .line 6
    invoke-virtual {v1}, Li1/c$a;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Li1/c$a;->b()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3f} :catch_4f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_4c

    goto :goto_21

    .line 8
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_66

    goto :goto_6a

    :catchall_4c
    move-exception p0

    move-object v1, v2

    goto :goto_6f

    :catch_4f
    move-exception p0

    move-object v1, v2

    goto :goto_55

    :catchall_52
    move-exception p0

    goto :goto_6f

    :catch_54
    move-exception p0

    .line 11
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_52

    if-eqz v1, :cond_62

    .line 12
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :goto_6a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_6f
    if-eqz v1, :cond_79

    .line 17
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :cond_79
    :goto_79
    :try_start_79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 21
    :goto_81
    goto :goto_83

    :goto_82
    throw p0

    :goto_83
    goto :goto_82
.end method

.method public static d(I)Li1/a;
    .registers 4

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 1
    sget-object p0, Li1/a;->p:Li1/a;

    return-object p0

    .line 2
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to BackoffPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_24
    sget-object p0, Li1/a;->o:Li1/a;

    return-object p0
.end method

.method public static e(I)Li1/k;
    .registers 4

    if-eqz p0, :cond_42

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_39

    const/4 v0, 0x4

    if-eq p0, v0, :cond_36

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1a

    .line 2
    sget-object p0, Li1/k;->t:Li1/k;

    return-object p0

    .line 3
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to NetworkType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_36
    sget-object p0, Li1/k;->s:Li1/k;

    return-object p0

    .line 5
    :cond_39
    sget-object p0, Li1/k;->r:Li1/k;

    return-object p0

    .line 6
    :cond_3c
    sget-object p0, Li1/k;->q:Li1/k;

    return-object p0

    .line 7
    :cond_3f
    sget-object p0, Li1/k;->p:Li1/k;

    return-object p0

    .line 8
    :cond_42
    sget-object p0, Li1/k;->o:Li1/k;

    return-object p0
.end method

.method public static f(I)Li1/n;
    .registers 4

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 1
    sget-object p0, Li1/n;->p:Li1/n;

    return-object p0

    .line 2
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to OutOfQuotaPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_24
    sget-object p0, Li1/n;->o:Li1/n;

    return-object p0
.end method

.method public static g(I)Li1/s$a;
    .registers 4

    if-eqz p0, :cond_3c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_39

    const/4 v0, 0x2

    if-eq p0, v0, :cond_36

    const/4 v0, 0x3

    if-eq p0, v0, :cond_33

    const/4 v0, 0x4

    if-eq p0, v0, :cond_30

    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    .line 1
    sget-object p0, Li1/s$a;->t:Li1/s$a;

    return-object p0

    .line 2
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to State"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_30
    sget-object p0, Li1/s$a;->s:Li1/s$a;

    return-object p0

    .line 4
    :cond_33
    sget-object p0, Li1/s$a;->r:Li1/s$a;

    return-object p0

    .line 5
    :cond_36
    sget-object p0, Li1/s$a;->q:Li1/s$a;

    return-object p0

    .line 6
    :cond_39
    sget-object p0, Li1/s$a;->p:Li1/s$a;

    return-object p0

    .line 7
    :cond_3c
    sget-object p0, Li1/s$a;->o:Li1/s$a;

    return-object p0
.end method

.method public static h(Li1/k;)I
    .registers 4

    .line 1
    sget-object v0, Lq1/v$a;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_41

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3e

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_22

    sget-object v0, Li1/k;->t:Li1/k;

    if-ne p0, v0, :cond_22

    return v1

    .line 3
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    return v2

    :cond_3f
    return v1

    :cond_40
    return v2

    :cond_41
    return v1

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Li1/n;)I
    .registers 4

    .line 1
    sget-object v0, Lq1/v$a;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    return v1

    .line 2
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Li1/s$a;)I
    .registers 4

    .line 1
    sget-object v0, Lq1/v$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    const/4 p0, 0x5

    return p0

    :pswitch_29
    const/4 p0, 0x4

    return p0

    :pswitch_2b
    const/4 p0, 0x3

    return p0

    :pswitch_2d
    const/4 p0, 0x2

    return p0

    :pswitch_2f
    const/4 p0, 0x1

    return p0

    :pswitch_31
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

###### Class q1.v.a (q1.v$a)
.class synthetic Lq1/v$a;
.super Ljava/lang/Object;
.source "WorkTypeConverters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    invoke-static {}, Li1/n;->values()[Li1/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lq1/v$a;->d:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Li1/n;->o:Li1/n;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lq1/v$a;->d:[I

    sget-object v3, Li1/n;->p:Li1/n;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 2
    :catch_1d
    invoke-static {}, Li1/k;->values()[Li1/k;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lq1/v$a;->c:[I

    :try_start_26
    sget-object v3, Li1/k;->o:Li1/k;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lq1/v$a;->c:[I

    sget-object v3, Li1/k;->p:Li1/k;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lq1/v$a;->c:[I

    sget-object v4, Li1/k;->q:Li1/k;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    const/4 v3, 0x4

    :try_start_44
    sget-object v4, Lq1/v$a;->c:[I

    sget-object v5, Li1/k;->r:Li1/k;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    const/4 v4, 0x5

    :try_start_4f
    sget-object v5, Lq1/v$a;->c:[I

    sget-object v6, Li1/k;->s:Li1/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    .line 3
    :catch_59
    invoke-static {}, Li1/a;->values()[Li1/a;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lq1/v$a;->b:[I

    :try_start_62
    sget-object v6, Li1/a;->o:Li1/a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6a
    sget-object v5, Lq1/v$a;->b:[I

    sget-object v6, Li1/a;->p:Li1/a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_74

    .line 4
    :catch_74
    invoke-static {}, Li1/s$a;->values()[Li1/s$a;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lq1/v$a;->a:[I

    :try_start_7d
    sget-object v6, Li1/s$a;->o:Li1/s$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_85} :catch_85

    :catch_85
    :try_start_85
    sget-object v1, Lq1/v$a;->a:[I

    sget-object v5, Li1/s$a;->p:Li1/s$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_8f
    sget-object v0, Lq1/v$a;->a:[I

    sget-object v1, Li1/s$a;->q:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_99

    :catch_99
    :try_start_99
    sget-object v0, Lq1/v$a;->a:[I

    sget-object v1, Li1/s$a;->r:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a3
    sget-object v0, Lq1/v$a;->a:[I

    sget-object v1, Li1/s$a;->s:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ad
    sget-object v0, Lq1/v$a;->a:[I

    sget-object v1, Li1/s$a;->t:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b8} :catch_b8

    :catch_b8
    return-void
.end method
