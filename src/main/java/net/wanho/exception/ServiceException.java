package net.wanho.exception;

/**
 *
 * <服务异常>
 * @author sapling
 * @version 1.0v
 *
 */
public class ServiceException extends Exception{

	private static final long serialVersionUID = 1L;

	public ServiceException() {
		super();
	}

	public ServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public ServiceException(String message) {
		super(message);
	}

	public ServiceException(Throwable cause) {
		super(cause);
	}

}
