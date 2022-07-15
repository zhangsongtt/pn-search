#include "log_board.h"

#include <iomanip>
#include <ctime>
#include <sstream>


using namespace std;


// creates a new file in directory \log\, that is uniquely named according to current date and time

#if defined(__GNUC__) && defined(__linux__)
std::string GetDatetime() {
	auto time_t = time(nullptr);
	char time_buf[36];
	ctime_r(&time_t, time_buf);
	return time_buf;
}
#elif defined(_MSC_VER)
std::string GetDatetime() {
	auto time_t = time(nullptr);
	char time_buf[36];
	ctime_s(time_buf, 36, &time_t);
	return time_buf;
}
#endif

log_board::log_board() {
	auto time = GetDatetime();

	//ostringstream oss;
	//oss << time;
	//auto date_string = oss.str();

	//ofs = ofstream("log/" + date_string + ".log");
	ofs = ofstream("log/" + time + ".log");
}
